#include <iostream>
using namespace std;

bool isPalindrome(int y) {
    //complete the function
    int x = y;
    int rev = 0;
    int r;
    do {
        r = x % 10;
        rev = rev * 10 + r;
        x = x / 10;
    }
    while (x != 0);

    if (rev == y)
        return true;
    else
        return false;
}

int main() {
    int n;
    cin >>n;
    
    if(isPalindrome(n)) {
        cout <<n<<" is a palindrome";
    }
    else {
        cout << n<<" is NOT a palindrome";
    }
    return 0;
}
