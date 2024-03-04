#include <iostream>

int maiorAB(int a, int b);

int main(){

    int a, b, c;
    int result;

    std::cin >> a;
    std::cin >> b;
    std::cin >> c;

    result = maiorAB(a, b);
    result = maiorAB(result, c);

    std::cout << result << " eh o maior\n";

    return 0;
}

int maiorAB(int a, int b){
    int maior = (a + b + abs(a - b)) / 2;
    if (maior == a)
        return a;
    return b;
}