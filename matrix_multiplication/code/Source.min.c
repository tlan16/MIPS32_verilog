#include <stdio.h>

int main()
{
  int m, n, p, q, c, d, k, sum = 0;
  int first[2][2], second[2][2], multiply[2][2];

  m=2;
  n=2;

  first[0][0]=1;
  first[0][1]=2;
  first[1][0]=3;
  first[1][1]=4;

  p=2;
  q=2;

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

  return 0;
}
