//tối ưu hóa vòng lặp
#include <stdio.h>
#include <time.h>

int n = 10;
float tongPhanSo (int n) {
	float sum = 0;
	for (int i = 1; i <= n; i++) {
		sum += 1.0 / i;
	}
}
int tong (int n) {
    int S = 0;
    
    for (int i = 1; i <= n; i++)
    {
        S = S + i;
    }
    return S;
}



int main () {
clock_t begin = clock();
    int b;
    float c, x;
    for (int i = 0; i < 5000; i++) {
        b = tong (n);
        c = tongPhanSo (n);
        x = i + (b + c) * 2;
        if (( x == 0) ) printf("Loi tinh toan");
        else printf ("%f \t ", x);
    }
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

}
