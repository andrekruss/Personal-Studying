#include <stdio.h>

int fibonacci(int n);

int main() {

    int n;
    printf("Digite o termo da sequencia que deseja calcular: \n");
    scanf("%d", &n);

    int fib = fibonacci(n);

    printf("fibonacci(%d) = %d\n", n, fib);

    return 0;
}

int fibonacci(int n) {
    if (n == 0)
        return 0;
    if (n == 1)
        return 1;
    int fib = fibonacci(n - 1) + fibonacci(n - 2);
    return fib;
}