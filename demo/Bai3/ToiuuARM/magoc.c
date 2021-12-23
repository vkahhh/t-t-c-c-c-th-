//tinh toan 1 lan voi cac bieu thuc lap (cai tien ca ve kich thuoc va hieu nang)
//switch-case

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

int main () {
clock_t begin = clock();
    int x, y, z, t;
    char *str = "hilindaxinchaocanhatoilatranducbodaygdiuwh54841618jadjiwwiudua4956161";
    for (int i = 1; i<=10; i++) {
                x += strlen(str);
                }
            y = 1402 + strlen(str);
            z = 1402 * strlen(str); 
            t = (strlen(str)) * (strlen(str)) * 3 + 1200;
            printf ("so ki tu: %zu\n", strlen (str));
            printf ("Ket qua: \t %d \t %d \t %d", y, z, t);
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);

    }
    

