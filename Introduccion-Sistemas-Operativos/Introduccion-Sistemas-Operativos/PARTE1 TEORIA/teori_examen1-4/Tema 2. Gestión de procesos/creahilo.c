#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
 
#include <sys/syscall.h>
  
void * hilo_main (void * arg)
{
  fprintf (stderr, "\tEl PID del hilo hijo es: %d\n", (int)getpid());
  fprintf (stderr, "\tEl TID del hilo hijo es: %d\n", (int)syscall(SYS_gettid));
 
  /* Bucle infinito del hilo hijo. */
  while (1);

  return NULL;
}

int main (void)
{
  pthread_t thread;

  fprintf (stderr, "\nEl PID del hilo principal es: %d\n", (int)getpid());
  fprintf (stderr, "El TID del hilo principal es: %d\n\n", (int)syscall(SYS_gettid));

  /* Creamos un hilo cuya ejecución comienza en la función hilo_main. */
  pthread_create(&thread, NULL, &hilo_main, NULL);

  /* Bucle infinito del hilo padre. */
  while (1);

  return 0;
}              
