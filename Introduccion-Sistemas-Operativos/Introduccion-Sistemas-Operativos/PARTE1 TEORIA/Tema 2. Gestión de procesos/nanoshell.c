#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void)
{
  pid_t pidhijo;
  char orden[80];

  while(1) {
    printf("$ ");
    gets(orden);

    pidhijo = fork();
    if (pidhijo == 0 ) {
      execlp(orden, orden, NULL);
      printf("La orden %s falló\n", orden);
      exit(1);
    }
    wait(NULL);
  }

  return 0;
}
