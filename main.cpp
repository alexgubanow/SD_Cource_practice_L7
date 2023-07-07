#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

int add(int a, int b) {
  return a + b;
}

TEST_CASE("check if add() works") {
  CHECK(add(0, 0) == 0);
  CHECK(add(1, 1) == 2);
  CHECK(add(-1, -1) == -2);
}