#include <stdio.h>

int main(void) {
    printf("Hello from C!\n");
    printf("Dies ist die Integer(zahl): %d, Mit Float kann man Kommazahlen darstellen, "
           "hier z.B. Pi: %.2f, Mit String kann ein Wort ausgegeben werden, in dem Fall hier: %s\n",
           42, 3.14, "test");
    puts("This is puts output");
    return 0;
}

