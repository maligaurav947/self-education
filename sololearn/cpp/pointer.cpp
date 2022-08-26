#include <iostream>
using namespace std;

int main() {
    int i = 13;
    float f = 3.14;
    double d = 4.13;
    char c = 'a';
    string s = "khiar";
    bool b = true;
    cout << &i << endl;
    cout << i << endl;
    cout << &f << endl;
    cout << f << endl;
    cout << &d << endl;
    cout << d << endl;
    cout << &c << endl;
    //cout << c << endl;
    cout << &s << endl;
    cout << s << endl;
    cout << &b << endl;
    cout << b << endl;
    return 0;
}
