#include <cstdlib>
#include <iostream>

using namespace std;

extern "C" {

    void BASIC(int arg0 , int arg1);
    int MUL7(int arg0);
    int FIND_PATTERN_1011(int arg0);
    void REVERSE(int* arg0 , int arg1);
    
    int Counter1bit(int Number , int RegSize);
    int DivisibilityCounter(int* Array, int ArraySize, int Value);
    int LinearSearch(int* Array, int ArraySize, int Value);
    void ReverseIntArray(int* Array, int ArraySize);
    
    
    int NormalFactorial(int arg0);
    int RecursiveFactorial(int arg0);
    

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


    if(FIND_PATTERN_1011(11))
        cout<<"\n11 Contains 1011";

    //0b111110111011 = 4027
    if(FIND_PATTERN_1011(4027))
        cout<<"\n4027 Contains 1011";

    //0b1000101011101001011 = 284491
    if(FIND_PATTERN_1011(284491))
        cout<<"\n284491 Contains 1011";






    return 0;
}
