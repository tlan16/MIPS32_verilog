#include <stdio.h>
//#include <conio.h>
 
int main()
{
  int m, n, p, q, c, d, k, sum = 0;
  int first[10][10], second[10][10], multiply[10][10];

  /*
  printf("Enter the number of rows and columns of first matrix\n");
  scanf("%d%d", &m, &n);
  printf("Enter the elements of first matrix\n");
  */
 
  m=15;
  n=15;

  /*
  for (  c = 0 ; c < m ; c++ )
    for ( d = 0 ; d < n ; d++ )
      scanf("%d", &first[c][d]);
 */

  first[0][0]=1;
  first[0][1]=2;
  first[1][0]=3;
  first[1][1]=4;


  /*
  printf("Enter the number of rows and columns of second matrix\n");
  scanf("%d%d", &p, &q);
  */

  p=2;
  q=2;
 
  if ( n != p )
    //printf("Matrices with entered orders can't be multiplied with each other.\n");
  else
  {
	/*
    printf("Enter the elements of second matrix\n");
	
    for ( c = 0 ; c < p ; c++ )
      for ( d = 0 ; d < q ; d++ )
        scanf("%d", &second[c][d]);
	*/

  second[0][0]=1;
  second[0][1]=1;
  second[1][0]=1;
  second[1][1]=1;
 
    for ( c = 0 ; c < m ; c++ )
    {
      for ( d = 0 ; d < q ; d++ )
      {
        for ( k = 0 ; k < p ; k++ )
        {
          sum = sum + first[c][k]*second[k][d];
        }
 
        multiply[c][d] = sum;
        sum = 0;
      }
    }
 

	/*
    printf("Product of entered matrices:-\n");
 
    for ( c = 0 ; c < m ; c++ )
    {
      for ( d = 0 ; d < q ; d++ )
        printf("%d\t", multiply[c][d]);
 
      printf("\n");
    }

	*/
  }
 
  //getch();
  return 0;
}