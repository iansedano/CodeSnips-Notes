#include <iostream>
#include <list>

// lists are doubly linked lists

int main()
{
	std::list<int> myNums = {1,2,3,4,5};

	myNums.push_back(6);
	myNums.push_front(0);
	std::list<int>::size_type size = myNums.size();

	std::list<int>::iterator start = myNums.begin();
	std::list<int>::iterator end = myNums.end();

	std::cout << *start << &start << std::endl;

}
