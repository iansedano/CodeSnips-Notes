```cpp
// MAIN FILE

#include <iostream>

void Log(const char* message);

int main()
{
    Log("Hello Worldoou");
    std::cin.get();
}


// COMPONENT FILE

#include <iostream>

void Log(const char* message)
{
    std::cout << message << std::endl;
}
```