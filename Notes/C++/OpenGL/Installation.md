### First steps

- add `opengl32.lib` to linker input (this is included with OS)

- Download GLFW (build from source with CMake if you want it tailored to your system).
- the `include` folder has header files
- the libraries in one of the `lib` folders
- add `lib` to library path and link with `GLFW`:
    - In Visual Studio 2019 > Project > Properties > VC++ Directories > Library Directories - add the path
    - Once that is applied you can then Properties > Linker Input > Additional Dependencies > add `glfw3.lib`
- add `include` to includes path.
    - Properties > VC++ Directories > Include Directories - add the path

### Check your config

```c++
#include <GLFW/glfw3.h>
#include <thread>

int main()
{
    glfwInit();
    std::this_thread::sleep_for(std::chrono::seconds(1));
    glfwTerminate();
}
```


### GLEW

- Move includes to include
- Move libs to libs and link
- Move DLL system32...
- Maybe its best to build it following instructions...


