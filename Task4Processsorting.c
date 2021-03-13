#include<stdio.h>

#include<stdlib.h>

#include<sys/types.h>

#include<unistd.h>

int main()

{

int a[10]={5,2,4,9,6,1,3,8,7,4};

printf("The unsorted array is :\n ");

for(int i = 0 ; i< 10 ; i++ )
{
printf("\n%d",a[i]);
}
int pid;
pid = fork();

int a = 0;
if (pid != -1)
{
   if (pid == 0)
  {

     for (int i =0; i< 10; i++)
   {

        for (int j =0; j < 10; j++)
       {

           if ( a[i] < a[j] )
          {
             a = a[i];
            a[i] = a[j];
            a[j] = a;
          }
       }

    }
      printf ("The sorted array is: ");

  for (int i=0; i<10; i++)
 {
  printf ("\n%d",a[i]);
 }

  }

}
   else
  {
    printf ("Error, please try again.");
  }

return 0;

}
            