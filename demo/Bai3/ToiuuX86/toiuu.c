//thay the bt con chung, cai thien ca kich thuoc va hieu nang
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

int main () {
clock_t begin = clock();   
 int x, y, z, t;
    char *str = "hilindaxinchaocanhatoilatranducbodaygdiuwh54841618jadjiwwiudua4956161";
    int len = strlen(str); 
            for (int i = 1; i<=10; i++) {
                x += len;
                }
            y = 1402 + len;
            z = 1402 * len; 
            t = (len * len * 3 + 1200);
            printf ("so ki tu: %d\n", len);
            printf ("Ket qua: \t %d \t %d \t %d", y, z, t);

clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

}
