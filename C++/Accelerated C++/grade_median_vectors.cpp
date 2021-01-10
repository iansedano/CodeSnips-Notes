



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

