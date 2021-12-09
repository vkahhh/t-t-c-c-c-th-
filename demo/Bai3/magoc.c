#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main () {
    int x, y, z, t;
    char *str = "hilindaxinchaocanhatoilatranducbodaygdiuwh548416184956161";
    for (int i = 1; i<=10; i++) {
        x += strlen(str);
    }
    y = 1402 + strlen(str);
    z = 1402 * strlen(str); 
    t = (strlen(str)) * (strlen(str));
    printf ("so ki tu: %zu\n", strlen (str));

    printf ("Ket qua: \t %d \t %d \t %d", y, z, t);
}

