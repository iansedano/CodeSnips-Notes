#include <iostream>
#include <cctype> // isspace
#include <string>
#include <vector>

using std::vector;
using std::string;

/**
 * How to get a list of words from a long string.
*/

vector<string> split(const string& s)
{
	vector<string> output;
	typedef string::size_type string_size;
	string_size i = 0;

	while (i != s.size()) {
		while (i != s.size() && isspace(s[i]))
			++i;
		
		string_size j = i;

		while (j != s.size() && !isspace(s[j]))
			++j;
		
		if (i != j) {
			output.push_back(s.substr(i, j - i));
			i = j;
		}
	}
	return output;
}

int main()
{
    string s = "Hello World, How are you today?";
    vector<string> vec = split(s);

    for (vector<string>::size_type i = 0; i != vec.size(); i++){
    std::cout << vec[i] << std::endl;
    }
}