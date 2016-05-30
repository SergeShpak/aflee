#include "terminal_assert.h"
#include <stdio.h>

static int length(char *str) {
  char *current_char = &str[0];
  int len = 0;
  while (*current_char != '\0') {
    len++;
    current_char++;
  }
  return len;
}

int main(int argc, char *argv[]) {
  terminal_assert(1 == 1);
  if (length(argv[1]) != 4) {
  }
  return 0;
}
