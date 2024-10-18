#include <iostream>
#include <fstream>

using namespace std;

int main() {
    ifstream checkfile;
    checkfile.open("/opt/setupfiles");
    if(checkfile) {
        cout << "server ok";
    } else {
        cerr;
    }
}
