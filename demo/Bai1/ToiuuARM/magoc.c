#include <stdio.h>

#include <stdlib.h>
#include <time.h>


void main() {

clock_t begin = clock();
    float sum = 0;

    int   n   = 1000000;


    for (int i = 0; i <= n; i++) {

        sum += i;

    }

    printf ("Tong: %f", sum);

    float avg = sum / n;

    printf("\n trung binh cong : %f", avg);


    printf ("Cac so chan la: \n");   

    for (int i = 0; i <= n; i++) {

	if (i % 2 == 0) {

		printf ("%d \t", i);

        }

    }
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("time: %f", time_spent);

}
