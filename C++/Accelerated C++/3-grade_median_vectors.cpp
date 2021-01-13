#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <string>
#include <vector>

using std::cin;					using std::sort;
using std::cout;				using std::streamsize;
using std::endl;				using std::string;
using std::setprecision;		using std::vector;

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

	double grade;
	vector<double> homework;

	while (cin >> grade) {
		homework.push_back(grade);
	}

	typedef vector<double>::size_type vec_sz;
	vec_sz size = homework.size();

	if (size == 0) {
		cout << endl << "You have not entered any homework grades.  "
		                "Please try again." << endl;
		return 1;
	}

	sort(homework.begin(), homework.end());

	vec_sz mid = size / 2; // floor result is assigned
	double median;
	median = size % 2 == 0 ? (homework[mid] + homework[mid + 1]) / 2
	                       : homework[mid];

	streamsize prec = cout.precision();
	cout << "Your final grade is " << setprecision(3)
		 << 0.2 * midterm + 0.4 * final + 0.4 * median
		 << setprecision(prec) << endl;

	return 0;

}







