/* author: Andy St. Jean
 * date: 10/14/18
 * a program that replicates itself for educational purposes
 */

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h> 
#include <stdlib.h>
#include <error.h>
#include <unistd.h>
#include <malloc.h>

#define DEBUG 0
#define MEM_SIZE 512

#define BUFF_LENGTH 200

//dumps the content of the file for debugging
void dump_file(char *f)
{
  char c;

  FILE *tmp = fopen(f, "r");
  while((c=fgetc(tmp)) != EOF)
  {
    putc(c, stdout);
  }
  fclose(tmp);
}


//the file copies itself into a new file f
void copy_self(FILE *f)
{
   char c;

   FILE *self = fopen(__FILE__, "r");
   while((c = fgetc(self)) != EOF)
   {
     fputc(c, f);
   }

   fclose(self);
   fclose(f);
}


//replicate function to replicate and execute code
void replicate() {
  
  time_t now = time(0);
  
  char new_name[50];
  sprintf(new_name, "new_file%ld.c", now);

  FILE *new_file;
  new_file = fopen(new_name, "w");
  copy_self(new_file);

#if DEBUG
	printf("DEBUGGING!!\n");
	dump_file(new_name);
	printf("DONE DEBUGGING!!\n");
#endif
  
  sleep(3);

  char bash_cmd[100] = "bash compile ";
  char run_cmd[55];
  strcpy(run_cmd, new_name);
  strcat(run_cmd, ".o");

  strcat(bash_cmd, new_name);

  if(system(bash_cmd) < 0)
  {
    perror("bash command");
    exit(-1);
  }

  if(fork() == 0)
  {
    printf("child running new copy\n");
    if(system(run_cmd) < 0)
    {
      perror("run command");
      exit(-1);
    }
  }

  else
  {
    printf("parent running new copy\n");
  }
}

//function to test mucking with memory creates some null pointers
void muck_mem()
{
  int *p = (int*) malloc(sizeof(MEM_SIZE));
  *p = 9;
  
  if(fork() == 0)
  {
    p = NULL;
  }

  else
  {
    p = NULL;
  }
}

//main routine
int main()
{
  int i  = 0;
  while(i < 1)
  {
    replicate();
    muck_mem();
    i++;
  }

  return 0;
}

