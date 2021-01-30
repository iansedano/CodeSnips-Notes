#include <vector>

#include "grade.h"
#include "Student_info.h"

bool fgrade(const Student_info& s)
{
	return grade(s) < 60;
}

vector<Student_info> extract_fails(vector<Student_info>& students)
{
	vector<Student_info> pass, fail;

	for 
	(
		vector<Student_info>::size_type i = 0;
		i != students.size();
		i++
	)
	{
		if ( fgrade(students[i]) )
		{
			fail.push_back(students[i]);
		}
		else
		{
			pass.push_back(students[i]);
		}
	}
	students = pass;
	return fail;

}