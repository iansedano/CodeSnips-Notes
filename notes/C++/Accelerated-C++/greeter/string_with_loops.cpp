#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(){
	cout << "Please gib me ur nam:  ";
	string name;
	cin >> name;

	cout << "How big u want?    ";
	int pad;
	cin >> pad;

	const string greeting = "Hello, " + name + "o!";

	// const int pad = 5;
	const int rows = (pad * 2) + 3;
	const string::size_type cols = greeting.size() + (pad * 2) + 2;

	cout << endl;

	int r = 0;

	for (int r = 0; r != rows; r++) {
		cout << endl;

		string::size_type c = 0;

		while (c != cols) {

			if (r == pad + 1 && c == pad + 1) {
				cout << greeting;
				c += greeting.size();
			} else {
				if (r == 0 || r == rows - 1 || c == 0 || c == cols - 1) {
					cout << "*";
				} else {
					cout << " ";
				}
				++c;
			}
		}
	}

	cout << endl;
	cout << endl;

	cout << "There u are, friend" << endl;

	return 0;

}