#include <stdio.h>
#include <string.h>
#include <unistd.h>


int main () {
    int x, y, z, t;
    char *str = "hilindaxinchaocanhatoilatranducbodaygdiuwh548416184956161";
    int len = strlen(str); 
    for (int i = 1; i<=10; i++) {
        x += len;
    }
    y = 1402 + len;
    z = 1402 * len; 
    t = len * len;
    printf ("So ki tu: %d\n", len);
    printf ("Ket qua: \t %d \t %d \t %d", y, z, t);
}

