//di chuyển mã để giảm kích thước; loại bỏ mã chết
#include <stdio.h>
#include <time.h>
int n = 10;
int tong (int n) {
    int S = 0;
    
    for(int i = 1; i <= n; i++)
    {
        S = S + i;
    }
    return S;
}
long tongGiaiThua(int n) {
	unsigned long long sum = 0;
	unsigned long long gt = 1;
	int i;

	for(i = 1; i <= n; i++) {
		gt *= i; // gt: i!
		sum += gt; // sum = sum + i!
	}	
	return sum;
    }

int main () {
clock_t begin = clock();
    int a = 1468796,
        b = 4894179,
        c = tong (n);
    long x = tongGiaiThua (n);
    int z, y;
    int temp = x * c * 3;
    if (a > b) {

        y = temp;
        z = temp + 456;
    }

    else {

        z = temp + 10e2;
        y = temp + 1;  
    }
    printf ("Tong tu 1 den %d là %d.\n", n, c);
    printf ("Tong giai thua tu 1! den %d! la %ld. \n", n, x);
    printf ("Ket qua cac bieu thuc y và z: \t %d \t %d \n", y, z);
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

}
