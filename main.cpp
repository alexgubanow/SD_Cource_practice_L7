#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#include "catch.hpp"

int add( int a, int b ) {
  return a + b;
}

TEST_CASE( "check if add() works" ) {
    REQUIRE( add(0, 0) == 0 );
    REQUIRE( add(1, 1) == 2 );
    REQUIRE( add(-1, -1) == -2 );
}
