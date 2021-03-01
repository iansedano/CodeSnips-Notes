#include <iostream>
#include <vector>

// dynamic size, bad at inserting in the middle

int main()
{
	std::vector<int> myNums = {1,2,3,4,5};

	std::cout << myNums[0] << myNums[1] << myNums[2] << std::endl;

	std::vector<int>::size_type size = myNums.size();

	myNums.push_back(6);

	std::vector<int>::const_iterator it = myNums.begin();

	std::cout << *it << " " << &it << std::endl;
}