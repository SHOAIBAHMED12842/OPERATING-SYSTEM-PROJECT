#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdlib.h>
char msg[1000];
sem_t e;
sem_t m;
sem_t full;
void * read_message();
void * write_message();
int main()
	
{
	pthread_t thread_r, thread_w;
	int result1, result2,sizeofbuffer=3;
	sem_init(&e, 0 , sizeofbuffer);
	sem_init(&m,1,1);
	sem_init(&full,0,0);
	result1 = pthread_create(&thread_r,NULL,read_message,NULL);
	if (result1 == 0)
	{
		printf ("\n Thread 1 created successfully\n");
	}
	else
	{
		printf("Sorry….Thread 1 is not created!!\n");
		exit(EXIT_FAILURE);
	}
	result2 = pthread_create(&thread_w,NULL,write_message,NULL);
	if (result2 == 0)
	{
		printf("\n Thread 2 created successfull\n");
	}
	else
	{
		printf("Sorry....Thread 2 is not created!!\n");
		exit(EXIT_FAILURE);
	}
	pthread_join (thread_r,NULL);
	pthread_join (thread_w,NULL);
	return 0;
}
void * read_message( )
{
	int i=0;
	while(i<3)
	{
		printf("consumer\n");
		sem_wait(&full);
		sem_wait(&m);
		sem_post(&m);
		sem_post(&e);
		i++;
	}
}
void * write_message( )
{
	int i=0;
	while(i<3)
	
	{
		printf("producer\n");
		sem_wait(&e);
		sem_wait(&m);
	sem_post(&m);
	sem_post(&full);
	i++;
	}

}

