#include <stdio.h>
#include <time.h>
double powern (double d, unsigned n)
{
  double x = 1.0;
  unsigned j;

  for (j = 1; j <= n; j++)
    x *= d;

  return x;
}

int main (void)
{
clock_t begin = clock();
  double sum = 0.0;
  unsigned i;
  
  for (i = 1; i <= 100000000; i++)
    { 
      sum += powern (i, i % ((11397-1402)/1999));
    }

  printf ("sum = %g\n", sum);
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

  return 0;
}
