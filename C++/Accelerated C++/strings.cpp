#include <iostream>
#include <string>

int main(){
	std::cout << "Please gib me ur nam:  ";

	std::string name;
	std::cin >> name;

	const std::string greeting = "Hello, " + name + "o!";

	// This looks like a function, but it is a way to construct a string.
	// It takes a number and a character.
	const std::string spaces (greeting.size(), ' ');
	const std::string second = "* " + spaces + " *";

	const std::string first (second.size(), '*');

	std::cout << std::endl;
	std::cout << first << std::endl;
	std::cout << second << std::endl;
	std::cout << "* " << greeting << " *" << std::endl;
	std::cout << second << std::endl;
	std::cout << first << std::endl;
	
	return 0;
}