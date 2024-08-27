#include <iostream>
#include <string>

using std::cout;
using std::cin;
using std::endl;
using std::string;

void drawSquare(int size) {
	cout << "Now we will draw a square" << endl;

	const string star  = "*  ";
	const string space = "   ";

	for (int i = 0; i != size; i++) {
		int c = 0;
		while (c != size) {
			if (i == 0 || i == size - 1) {cout << star;}
			else {
				if (c == 0 || c == size - 1) {cout << star;}
				else {cout << space;}
			}
			++c;
		}
		cout << endl;
	}
}

void drawTriangle(int size) {
	cout << "Now we will draw a triangle" << endl;

	int tot = (size * 2) - 1;
	int diff = 0;
	int mid = 0;

	for (int i = 0; i != size; i++) {

		int c = 0;

		while (c < tot + 1) {

			if (i == 0 && c == size) {
				cout << "*";
			} else if (i == size - 1 && c != 0) {
				cout << "* ";
				c += 2;
				continue;
			} else if (c == size - diff || c == size + diff) {
				cout << "*";
			} else {
				cout << " ";
			}
			++c;
		}

		++diff;
		mid += 2;
		cout << endl;

	}


} 

void drawCircle(int size) {
	cout << "Now we will draw a square" << endl;
} 

int main() {

	cout << "Type 1 for a triangle" << endl
		 << "Type 2 for a square" << endl
		 << "Type 3 for a circle" << endl;

	int type;
	cin >> type;

	cout << "How big? (max 20 min 1)" << endl;

	int size;
	cin >> size;

	if (size > 20) size = 20;
	if (size < 1) size = 1;

	cout << "You chose type " << type << endl
		 << "You chose size " << size << endl;


	switch (type) {
		case 1:
			cout << "You chose type WAN" << endl;
			drawTriangle(size);
			break;
		case 2:
			cout << "You chose type TWA" << endl;
			drawSquare(size);
			break;
		case 3:
			cout << "You chose type TROI" << endl;
			break;
		default:
			cout << "You chose an invalid type" << endl;
			return 1;
	}

	return 0;
}

