#include <cstdlib>
#include <iostream>

using namespace std;

extern "C" {
    void BASIC_TEST(int arg0 , int arg1);
}

int main() {
    // test Compiler Mode
    // Return 4 if 32bit  and Return 8 if 64bit Mode
    long int x;
    int type = sizeof(x);
    if(type == 4) printf("%s\n\n", "Running In 32Bit Mode");
    else  printf("%s\n\n", "Running In 64Bit Mode");


    BASIC_TEST(20,5);



    return 0;
}