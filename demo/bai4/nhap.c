#include<stdio.h>
int n = 100000;

int isPrimeNumber(int n) {
    // so nguyen n < 2 khong phai la so nguyen to
    if (n < 2) {
        return 0;
    }
    // check so nguyen to khi n >= 2
    int i;
    int squareRoot = (int) sqrt(n);
    for (i = 2; i <= squareRoot; i++) {
        if (n % i == 0) {
            return 0;
        }
    }
    return 1;
}
 void KiemTraChanLe (int n) {
     if (n % 2 == 0) printf ("n la so chan\n");
     else printf ("n la so le");
 }

int main() {
 int i;
    printf("Tat ca cac so nguyen to nho hon %d la: \n", n);
    if (n >= 2) {
        printf("%d ", 2);
    }
    for (i = 3; i < n; i+=2) {
        if (isPrimeNumber(i) == 1) {
            printf("%d ", i);
        }
    }
    KiemTraChanLe (n);
}
