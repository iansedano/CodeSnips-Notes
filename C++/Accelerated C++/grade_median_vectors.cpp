



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