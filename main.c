#include <stdio.h>
#include <string.h>

char* trim(char* str)
{
  int start = -1;
  int len = strlen(str);
  for (int i=0;i<len;i++) {
    if ((str[i] < 0 || str[i] >= 0x20) && str[i] != ' ') {
      start = i;
      break;
    }
  }
  if (start >= 0) {
    for (int i=start;i<len;i++) {
      if ((str[i] >= 0 && str[i] < 0x20) || str[i] == ' ') {
        str[i] = 0;
        break;
      }
    }
    strcpy(str, &str[start]);
    return str;
  }
  return NULL;
}

int printStep(char* str)
{
  char* result[2];
  char* p = strtok(str, ":");
  int i=0;
  while (p != NULL) {
    result[i] = p;
    i++;
    if (i>=2) break;
    p = strtok(NULL, ":");
  }
  if (i>=2) {
    int sum = 0;
    int loop = atoi(result[0]);
    char* word = trim(result[1]);
    if (word) {
      for (int i=0;i<loop;i++) {
        for (int j=0;j<=i;j++) {
          printf("%s",result[1]);
          sum += strlen(result[1]);
        }
        printf("\n");
      }
    }
    return sum;
  }
  return 0;
}

int main(int argc, char** argv)
{
  if (argc >= 2) {
    return printStep(argv[1]);
  }
  char buff[256];
  fgets(buff, sizeof(buff), stdin);
  return printStep(buff);
}
