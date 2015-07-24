#include <iostream>
#include <tokenizer.h>
using namespace std;

int main()
{
    TokenList testList = {{"this"},{" "},{"is"},{" "},{"a"},{" "},{"list"},{" "},{"of"},{" "},{"tokens"}};

    cout << serialize(testList) << endl;


    return 0;
}

