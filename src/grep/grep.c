#include "grep.h"

grepFlags ReadFlags(int argc, char **argv) {
  grepFlags flags = {0};
  int curr_flag = getopt(argc, argv, "e:f:vicohsln");
  for (; curr_flag != -1; curr_flag = getopt(argc, argv, "e:f:vicohsln")) {
    switch (curr_flag) {
      case 'e':
        flags.e = 1;
        addTemplate(&flags, optarg);
        break;
      case 'i':
        flags.i = REG_ICASE;
        break;
      case 'v':
        flags.v = 1;
        break;
      case 'c':
        flags.c = 1;
        break;
      case 'l':
        flags.l = 1;
        break;
      case 'n':
        flags.n = 1;
        break;
      case 'h':
        flags.h = 1;
        break;
      case 's':
        flags.s = 1;
        break;
      case 'f':
        flags.f = 1;
        addTemplateFromFile(&flags, optarg);
        break;
      case 'o':
        flags.o = 1;
        break;
    }
  }
  if (flags.e == 0 && flags.f == 0) addTemplate(&flags, argv[optind++]);
  if (argc - optind == 1) flags.h = 1;
  if (flags.l || flags.c || flags.v) {
    flags.o = 0;
  }
  return flags;
}

int main(int argc, char **argv) {
  if (argc <= 2) {
    exit(0);
  }
  grepFlags flags = ReadFlags(argc, argv);
  workWithFile(argc, argv, &flags);
  return 0;
}

void workWithFile(int argc, char **argv, grepFlags *flags) {
  char *template;
  for (int i = optind; i < argc; i++) {
    char *filename = argv[i];
    template = flags->regular;
    workWithFlags(flags, filename, template);
  }
}

void workWithFlags(grepFlags *flags, char *filename, char *template) {
  FILE *file;
  file = fopen(filename, "r");
  if (file == NULL) {
    if (!flags->s) perror(filename);
    exit(1);
  }
  regex_t preg;
  int error = regcomp(&preg, template, REG_EXTENDED | flags->i);
  if (error) {
    fclose(file);
    perror("Error");
  }
  char *line = NULL;
  size_t memline = 0;
  int read = 0;
  int count = 0;       // -c -l
  int line_count = 1;  // -n
  int result;
  read = getline(&line, &memline, file);
  while (read != -1) {
    result = regexec(&preg, line, 0, NULL, 0);
    result = flags->v ? !result : result;
    if (!result) {
      if (!flags->c && !flags->l) {
        if (!flags->h) printf("%s:", filename);
        if (flags->n) printf("%d:", line_count);
        if (flags->o)
          print_match(preg, line, filename, *flags, line_count);
        else
          print_line(line, read);
      }
      count++;
    }
    read = getline(&line, &memline, file);
    line_count++;
  }
  if (flags->l && flags->c) {
    if (count) {
      !flags->h ? printf("%s:1\n", filename) : printf("1\n");
    } else {
      !flags->h ? printf("%s:0\n", filename) : printf("0\n");
    }
  }
  if (flags->l && count) {
    printf("%s\n", filename);
  }
  if (flags->c && !flags->l) {
    if (!flags->h) printf("%s:", filename);
    printf("%d\n", count);
  }
  regfree(&preg);
  free(line);
}

// обработка флага o
void print_match(regex_t pattern, char *line, char *filename, grepFlags my_flag,
                 int count_line) {
  regmatch_t match;
  int offset = 0;
  int flag = 0;
  while (1) {
    int res = regexec(&pattern, line + offset, 1, &match, 0);
    if (res) {
      break;
    }
    if (!flag) {
      flag = 1;
    } else {
      if (!my_flag.h) {
        printf("%s:", filename);
      }
      if (my_flag.n) {
        printf("%d:", count_line);
      }
    }
    for (int i = match.rm_so; i < match.rm_eo; i++) {
      putchar(line[i + offset]);
    }
    printf("\n");
    offset += match.rm_eo;
  }
}

void print_line(char *line, int n) {
  for (int i = 0; i < n; i++) {
    putchar(line[i]);
  }
  if (line[n - 1] != '\n') putchar('\n');
}

void addTemplate(grepFlags *flags, char *pattern) {
  if (flags->len_regular != 0) {
    strcat(flags->regular + flags->len_regular, "|");
    flags->len_regular++;
  }
  flags->len_regular +=
      sprintf(flags->regular + flags->len_regular, "(%s)", pattern);
}

void addTemplateFromFile(grepFlags *flags, char *filename) {
  FILE *file;
  file = fopen(filename, "r");
  if (file == NULL) {
    if (!flags->s) perror(filename);
    exit(1);
  }
  char *line = NULL;
  size_t memline = 0;
  int read;
  read = getline(&line, &memline, file);
  while (read != -1) {
    if (line[read - 1] == '\n') line[read - 1] = '\0';
    addTemplate(flags, line);
    read = getline(&line, &memline, file);
  }
  free(line);
  fclose(file);
}