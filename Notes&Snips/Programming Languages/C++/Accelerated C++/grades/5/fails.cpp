// Initial notes chapter 5

#include <vector>

#include "grade.h"
#include "Student_info.h"

using std::vector;


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
		if ( fgrade(students[i]) ) fail.push_back(students[i]);
		else pass.push_back(students[i]);
	}
	students = pass;
	return fail;

}

vector<Student_info> extract_fails(vector<Student_info>& students)
{
	vector<Student_info> fail;
	vector<Student_info>::size_type i = 0;

	while (i != students.size()) {
		if (fgrade(students[i])) {
			fail.push_back(students[i]);
			// vectors dont support indices, so has to be called like this:
			students.erase(students.begin() + i);
		} else ++i;
	}
	return fail;

}


for(vector<Student_info>::const_iterator iter = students.begin();
		iter != students.end();
		++i) {
		// dereference operator * returns lvalue in this case
		// needs brackets to override precedence of .
		cout << (*iter).name << endl;
	}

vector<Student_info> extract_fails(vector<Student_info>& students)
{
	vector<Student_info> fail;
	vector<Student_info>::iterator iter = students.begin();
	
	while (iter != students.end()) {
		if (fgrade(*iter)){
			fail.push_back(*iter);
			// erase automatically increments iter
			iter = students.erase(iter);
		} else ++ iter;
	}

	return fail;
}

/**
 * Vectors are optimzed for fast access to arbitrary elements.
 * They are also efficient as long as elements are added to the
 * end of the vector. Moving elements in a vector is O(n^2).
 */

/**
 * Enter `list`.
 * <list>
 * optimized for fast index based insertion and deletion 
 */


/**
 * How to get a list of words from a long string.
*/
#include <cctype>
#include <string>

vector<string> split(const string& s)
{
	vector<string> ret;
	typedef string::size_type string_size;
	string_size i = 0;

	while (i != s.size()) {
		while (i != s.size() && isspace(s[i]))
			++i;
		
		string_size j = i;

		while (j != s.size() && !isspace(s[j]))
			++j;
		
		if (i != j) {
			ret.push_back(s.substr(i, j - i));
			i = j;
		}
	}
	return ret;
}