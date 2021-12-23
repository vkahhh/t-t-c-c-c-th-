//lựa chọn thuật toán
#include <stdio.h>
#include <time.h>
int main() {
clock_t begin = clock();
	int n = 1000;
	int i;
    printf ("Cac so chan la: \n");
    for (i = 0; i <= n; i++) {
        if (i % 2 == 0)
			printf(" %d, ", i); 
    }
    printf ("Cac so le la:\n");
    for (i = 0; i <= n; i++) {           
        if (i % 2 != 0) printf (" %d,", i);
    }

	clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

	return 0;
}
