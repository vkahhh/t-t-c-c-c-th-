#include <stdio.h>

int main() {
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
	return 0;
}