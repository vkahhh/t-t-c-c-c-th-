//toi uu hoa size: phan tich ham thanh cac ham nguyen tu
#include <stdio.h>
#include <time.h> 
/**
 * Phan tich so nguyen n thanh tich cac thua so nguyen to
 */
 

int main() {
clock_t begin = clock();
    int n = 10000000;
    int i = 2;
    int dem = 0;
    int a[100];
    // phan tich
    while (n > 1) {
        if (n % i == 0) {
            n = n / i;
            a[dem++] = i;
        } else {
            i++;
        }
    }
    // neu dem = 0 thi n la nguyen to
    if (dem == 0) {
        a[dem++] = n;
    }
    // in ket qua ra man hinh
    for (i = 0; i < dem - 1; i++) {
        printf("%d x ", a[i]);
    }
    printf("%d", a[dem - 1]);
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

}
