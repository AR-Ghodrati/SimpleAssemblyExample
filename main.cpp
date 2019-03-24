#include <cstdlib>
#include <iostream>

using namespace std;

extern "C" {

    void BASIC(int arg0 , int arg1);
    int MUL7(int arg0);
    int FIND_PATTERN_1011(int arg0);
    void REVERSE(int* arg0 , int arg1);

}

int main() {
    // test Compiler Mode
    // Return 4 if 32bit  and Return 8 if 64bit Mode
    long int x;
    int type = sizeof(x);
    if(type == 4) printf("%s\n\n", "Running In 32Bit Mode");
    else  printf("%s\n\n", "Running In 64Bit Mode");


    BASIC(20,5);
    cout<<"Mul7(5) : "<<MUL7(5)<<endl;


    int nums[5] = {1,2,3,4,5};
    REVERSE(nums,5);

    cout<<"After Reverse: ";
    for (int num : nums) {
        cout<< num <<' ';
    }



    return 0;
}