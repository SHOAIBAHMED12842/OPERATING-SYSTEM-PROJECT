include <stdio.h>
#include <stdlib.h>
int main(void)
{
FILE *fp, *fp1;
char readbuf[80];
/* Create one way pipe line with call to popen() */
fp = popen("printenv" , "r");

while(fgets(readbuf , 80 , fp1))
{
  printf("%s",readbuf);
}

/* Create one way pipe line with call to popen() */
fp1 = popen("sort","w");

while(fgets(readbuf , 80 , fp)!=NULL )
{
    fputs(readbuf,fp);
}
pclose(fp);
pclose(fp1);
return(0);
}
