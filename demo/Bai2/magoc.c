//lựa chọn thuật toán
#include <stdio.h>

int main() {
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

	
	return 0;
}