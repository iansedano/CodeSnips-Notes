#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
#include "grade.h"
#include "Student_info.h"

using std::cin;
using std::setprecision;
using std::cout;
using std::sort;
using std::domain_error;
using std::streamsize;
using std::endl;
using std::string;
using std::max;
using std::vector;


int main()
{
	vector<Student_info> students;
	Student_info record;
	string::size_type maxlen = 0;

	while (read(cin, record)) {
		maxlen = max(maxlen, record.name.size());
		students.push_back(record);
	}

	sort(students.begin(), students.end(), compare);

	streamsize prec = cout.precision();
	cout << setprecision(3);

	for
	(
		vector<Student_info>::size_type i = 0;
		i != students.size();
		i++
	)
	{
		cout << students[i].name
			 << string(maxlen + 2 - students[i].name.size(), ' ');

		try {
			double final_grade = grade(students[i]);
			cout <<  final_grade;
		} catch (domain_error e){
			cout << e.what();
		}
		cout << endl;
	}

	cout << setprecision(prec);

	return 0;
}