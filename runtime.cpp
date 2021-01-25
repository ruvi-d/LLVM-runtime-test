#include <iostream>

struct BalMap {
  int val = 42;
  BalMap(int in_val) : val{in_val} {}
};

extern "C" void *get_map(int val) {
  std::cout << __PRETTY_FUNCTION__ << val << std::endl;
  return new BalMap{val};
}

extern "C" int print_int(int val) {
  std::cout << __PRETTY_FUNCTION__ << val << std::endl;
  return 0;
}

extern "C" int print_map(void *val) {
  BalMap *mapVal = static_cast<BalMap *>(val);
  std::cout << __PRETTY_FUNCTION__ << mapVal->val << std::endl;
  return 0;
}

extern "C" int get_int() {
  int val{};
  std::cout << "Enter int: ";
  std::cin >> val;
  return val;
}