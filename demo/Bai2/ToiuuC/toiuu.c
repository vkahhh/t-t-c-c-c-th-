#include <stdio.h>
#include <time.h>


int main() {
clock_t begin = clock();
	int n = 1000;
	int i;
	// in ra so chan:
	
    printf("Cac so chan: \n");
	
    for(i = 0; i < n; i += 2) {
		printf("%d, ", i);
	}
	printf("\n\n");
	// in ra so le:
	printf("Cac so le: \n");
	for(i = 1; i < n; i += 2) {
		printf("%d, ", i);
	}
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

	return 0;
}
