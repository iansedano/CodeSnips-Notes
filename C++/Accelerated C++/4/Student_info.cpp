#include "Student_info.h"

using std::istream;
using std::vector;

bool compare(const Student_info& x, const Student_info y)
{
	return x.name < y.name;
}

istream& read(istream& is, Student_info& s)
{
	is >> s.name >> s.midterm >> s.final;
	read_hw(is, s.homework);
	return is;
}

istream& read_hw(istream& in, vector<double>& hw)
{
	if (in)
	{
		hw.clear();
		double grade;
		while (in >> grade)
			hw.push_back(grade);
		in.clear();
	}
	return in;
}