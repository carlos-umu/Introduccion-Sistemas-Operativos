#include <pthread.h> 
#include <stdio.h> 
#include <unistd.h> 
#include <sys/types.h>
#include <sys/syscall.h>


 
 
 void* thread_function_02 (void* arg) 
{
 
  fprintf (stderr, "\t\tgranchild thread pid is %d\n", (int) getpid ()); 
  fprintf (stderr, "\t\tgranchild thread tid is %d\n\n", (int)syscall(SYS_gettid));
   
  /* Spin forever.  */ 
  while (1); 
       
  return NULL; 
         
} 
         


 void* thread_function (void* arg) 
{
  pthread_t thread_02; 
  
  fprintf (stderr, "\tchild thread pid is %d\n", (int) getpid ()); 
  fprintf (stderr, "\tchild thread tid is %d\n\n", (int)syscall(SYS_gettid));
     
  pthread_create (&thread_02, NULL, &thread_function_02, NULL);  
   
  /* Spin forever.  */ 
  while (1); 
       
  return NULL; 
         
} 


          
          
int main () 
{       
  pthread_t thread; 
            
  fprintf (stderr, "\nmain thread pid is %d\n", (int) getpid ()); 
  fprintf (stderr, "main thread tid is %d\n\n", (int)syscall(SYS_gettid));
                
  pthread_create (&thread, NULL, &thread_function, NULL); 
                
  /* Spin forever.  */ 
  while (1); 
                    
  return 0; 
                      
} 