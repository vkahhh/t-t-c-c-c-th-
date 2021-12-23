//ofast
#include <stdio.h>
#include <time.h>     
const int DEC_10 = 10;
 

int main() {
clock_t begin = clock();
    int count = 0, i;
    // in ra man hinh cac so thuan nghich co 6 chu so
    for (i = 100000; i < 1000000; i++) {
        if (isThuanNghich(i)) {
            printf("%d\n", i);
            count++;
        }
    }
    printf("Tong cac so thuan nghich co 6 chu so la: %d", count);
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

}
 

int isThuanNghich(int n) {
    int a[20];
    int dem = 0, i;
    // phan tich n thanh mang cac chu so
    do {
        a[dem++] = (n % DEC_10);
        n = n / DEC_10;
    } while (n > 0);
    // kiem tra tinh thuan nghich
    for (i = 0; i < (dem/2); i++) {
        if (a[i] != a[(dem - i - 1)]) {
            return 0;
        }
    }
    return 1;
}
