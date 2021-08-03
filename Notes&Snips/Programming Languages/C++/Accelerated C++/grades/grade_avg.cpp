#include <iomanip>
#include <ios>
#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::setprecision;
using std::string;
using std::streamsize;

int main() {

	cout << "Please enter your first name:  ";
	string name;
	cin >> name;
	cout << "Hello " + name + "!" << endl;
	cout << "What was your midterm grade? ";
	double midterm;
	cin >> midterm;

	cout << "What was your final exam grade? ";
	double final;
	cin >> final;

	cout << "Enter all your homework grades" << endl;

	int count = 0;
	double sum = 0;
	double grade;

	while (cin >> grade) {
		++count;
		sum += grade;
	}

	streamsize prec = cout.precision();
	cout << "Your final grade is " << setprecision(3)
		 << (0.2 * midterm) + (0.4 * final) + (0.4 * (sum / count))
		 << setprecision(prec) << endl; // this resets the outputs precision

	return 0;
}