#include <iostream>
#include <iomanip>

class Product {
    public:
        int code;
        int quantity;
        double price;
        double getTotal();
};

double Product::getTotal() {
    return this->quantity * this->price;
}

int main() {

    Product p1, p2;

    std::cin >> p1.code;
    std::cin >> p1.quantity;
    std::cin >> p1.price;

    std::cin >> p2.code;
    std::cin >> p2.quantity;
    std::cin >> p2.price;

    std::cout << std::fixed << std::setprecision(2);
    std::cout << "VALOR A PAGAR: R$ " << p1.getTotal() + p2.getTotal() << std::endl;

    return 0;
}