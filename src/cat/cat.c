#include <getopt.h>
#include <stdbool.h>
#include <stdio.h>

typedef struct {
  bool numbers_no_empty;
  bool endline;
  bool numbers_all;
  bool squeeze;
  bool tabs;
  bool printall;
} CatFlags;

CatFlags CatReadFlags(int argc, char *argv[]);
void CatArgs(int argc, char **argv, CatFlags flags);
void CatWithNoFile();
int ReadFile(char *filetext, char *filename);
void func_n(char *filetext, int count_of_symbols);
void func_b(char *filetext, int count_of_symbols);
void func_e(char *filetext, int count_of_symbols);
void func_s(char *filetext, int count_of_symbols);
void func_t(char *filetext, int count_of_symbols);
void func_v(char *filetext, int count_of_symbols);

int main(int argc, char *argv[]) {
  CatFlags flags = CatReadFlags(argc, argv);
  CatArgs(argc, argv, flags);
  return 0;
}

CatFlags CatReadFlags(int argc, char *argv[]) {
  struct option longOpts[] = {{"number-nonblank", 0, NULL, 'b'},
                              {"number", 0, NULL, 'n'},
                              {"squeeze-blank", 0, NULL, 's'},
                              {NULL, 0, NULL, 0}};
  CatFlags flags = {0, 0, 0, 0, 0, 0};
  int cur_flag = getopt_long(argc, argv, "benstvET", longOpts, NULL);
  for (; cur_flag != -1;
       cur_flag = getopt_long(argc, argv, "benstvET", longOpts, NULL)) {
    switch (cur_flag) {
      case 'b':
        flags.numbers_no_empty = true;
        break;
      case 'e':
        flags.endline = true;
        flags.printall = true;
        break;
      case 'n':
        flags.numbers_all = true;
        break;
      case 's':
        flags.squeeze = true;
        break;
      case 't':
        flags.tabs = true;
        flags.printall = true;
        break;
      case 'v':
        flags.printall = true;
        break;
      case 'E':
        flags.endline = true;
        break;
      case 'T':
        flags.tabs = true;
        break;
      default:
        printf("Такого флага не сущетсвует!");
        break;
    }
  }
  return flags;
}

void CatArgs(int argc, char **argv, CatFlags flags) {
  if (argc == optind) CatWithNoFile(flags);
  char filetext[10000];
  int count_of_symbols = ReadFile(filetext, argv[optind]);
  if (flags.numbers_all) {
    func_n(filetext, count_of_symbols);
  } else if (flags.numbers_no_empty) {
    func_b(filetext, count_of_symbols);
  } else if (flags.endline) {
    func_e(filetext, count_of_symbols);
  } else if (flags.squeeze) {
    func_s(filetext, count_of_symbols);
  } else if (flags.tabs) {
    func_t(filetext, count_of_symbols);
  } else
    printf("%s", filetext);
}

void CatWithNoFile() {
  char buff[100000];
  while (1) {
    fgets(buff, 10000, stdin);
    printf("%s", buff);
  }
}

int ReadFile(char *filetext, char *filename) {
  char symbol;
  int count_of_symbols = 0;
  FILE *file = fopen(filename, "r");
  while ((symbol = fgetc(file)) != EOF) {
    filetext[count_of_symbols++] = symbol;
  }
  filetext[count_of_symbols] = '\0';
  fclose(file);
  return count_of_symbols;
}

void func_n(char *filetext, int count_of_symbols) {
  int i = 0;
  int count = 1;
  if (filetext[i] != EOF) {
    printf("%6d\t", count++);
  }
  for (; i < count_of_symbols; i++) {
    printf("%c", filetext[i]);
    if (filetext[i] == '\n') {
      printf("%6d\t", count++);
    }
  }
}

void func_b(char *filetext, int count_of_symbols) {
  int count_of_lines = 1;
  int i = 0;
  char symbol;
  while (count_of_lines != 2) {
    symbol = filetext[i++];
    if (symbol != '\n') {
      printf("%6d\t", count_of_lines++);
    } else {
      printf("%c", symbol);
    }
  }
  char next_symbol;
  for (; i != count_of_symbols + 1;
       symbol = filetext[i], next_symbol = filetext[i + 1], i++) {
    printf("%c", symbol);
    if (symbol == '\n' && next_symbol != '\n' && next_symbol != EOF) {
      printf("%6d\t", count_of_lines++);
    }
  }
}

void func_e(char *filetext, int count_of_symbols) {
  int symbol;
  for (int i = 0; i != count_of_symbols; i++) {
    symbol = filetext[i];
    if ((symbol < 32 && symbol != '\n' && symbol != '\t') || symbol == 127)
      printf("^");
    if (symbol > 127 && symbol < 160) printf("M-^");
    if (symbol > 159 && symbol < 255) {
      printf("M-");
      symbol = symbol + 128;
    } else if ((symbol < 32 || (symbol > 126 && symbol < 255)) &&
               symbol != '\n' && symbol != '\t') {
      if (symbol > 126 && symbol < 160)
        symbol = symbol - 64;
      else if (symbol < 126)
        symbol = symbol + 64;
    }
    if (symbol == '\n') {
      printf("$%c", symbol);
    } else
      printf("%c", symbol);
  }
}

void func_s(char *filetext, int count_of_symbols) {
  int flag = 0;
  int first_line = 1;
  for (int i = 0; i != count_of_symbols; i++) {
    if ((filetext[i] == '\n') && (filetext[i + 1] == '\n')) {
      if (first_line) {
        continue;
      }
      if (flag) {
        continue;
      } else
        flag = !flag;
      printf("%c", filetext[i]);
      if (first_line) {
        first_line = !first_line;
      }
    } else {
      printf("%c", filetext[i]);
      if (flag) {
        flag = !flag;
      }
      if (first_line) {
        first_line = !first_line;
      }
    }
  }
}

void func_t(char *filetext, int count_of_symbols) {
  int symbol;
  for (int i = 0; i != count_of_symbols; i++) {
    symbol = filetext[i];
    if ((symbol < 32 && symbol != '\n' && symbol != '\t') || symbol == 127)
      printf("^");
    if (symbol > 127 && symbol < 160) printf("M-^");
    if (symbol > 159 && symbol < 255) {
      printf("M-");
      symbol = symbol + 128;
    } else if ((symbol < 32 || (symbol > 126 && symbol < 255)) &&
               symbol != '\n' && symbol != '\t') {
      if (symbol > 126 && symbol < 160)
        symbol = symbol - 64;
      else if (symbol < 126)
        symbol = symbol + 64;
    }
    if (symbol == '\t') {
      printf("^|");
    } else {
      printf("%c", symbol);
    }
  }
}