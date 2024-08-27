#include <string>
#include <iostream>
#include <vector>
#include <algorithm>

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::max;

string::size_type width(const vector<string>& v)
{
    string::size_type maxlen = 0;
    for (vector<string>::size_type i = 0; i != v.size(); ++i)
        maxlen = max(maxlen, v[i].size());
    return maxlen;
}

vector<string> frame(const vector<string>& v)
{
    vector<string> output;
    string::size_type maxlen = width(v);
    string border(maxlen + 4, '*');

    output.push_back(border);

    for(
        vector<string>::size_type i = 0;
        i != v.size();
        ++i
       )
    {
        int padSize = maxlen - v[i].size();
        string pad = string(padSize, ' ');
        output.push_back("* " + v[i] + pad + " *");
    }

    output.push_back(border);
    return output;
}

vector<string> split(const string& s)
{
	vector<string> output;
	string::size_type i = 0;

	while (i != s.size()) {
		while (i != s.size() && isspace(s[i]))
			++i;
		
		string::size_type j = i;

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
    string s = "Hello World, how are you today?";
    vector<string> words = split(s);

    vector<string> frameVec = frame(words);
    
    for (vector<string>::size_type i = 0; i != frameVec.size(); ++i){
        cout << frameVec[i] << endl;
    }

    return 0;
}
