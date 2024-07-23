#ifndef GREP
#define GREP

#define _GNU_SOURCE
#include <getopt.h>
#include <regex.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
  int e, i, v, c, l, n, h, s, f, o;
  char regular[4096];  // массив для регулярных выражений
  int len_regular;
} grepFlags;

grepFlags ReadFlags(int argc, char **argv);
void workWithFile(int argc, char **argv, grepFlags *flags);
void workWithFlags(grepFlags *flags, char *filename, char *template);
void print_line(char *line, int n);
void addTemplate(grepFlags *flags, char *pattern);
void addTemplateFromFile(grepFlags *flags, char *filename);
void print_match(regex_t pattern, char *line, char *filename, grepFlags my_flag,
                 int count_line);

#endif