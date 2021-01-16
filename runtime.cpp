#include <iostream>

extern "C" int print_int(int val) {
    std::cout << val << std::endl;
    return 0;
}

extern "C" int get_int() {
    int val{};
    std::cout << "Enter int: ";
    std::cin >> val;
    return val;
}