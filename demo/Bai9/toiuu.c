//tối ưu hóa vòng lặp
#include <stdio.h>
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
        int b = tong (n);
        float c = tongPhanSo (n);
        float t = (b + c) *2;
        for (int i = 0; i < 5000; i++) {
            float x = i + t;
            if (( x == 0) ) printf("Loi tinh toan");
            else printf ("%f \t ", x);
    }
}