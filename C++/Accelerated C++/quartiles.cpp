#include <iostream>
#include <string>
#include <algorithm>
#include <vector>

using std::cout;
using std::cin;
using std::string;
using std::endl;

int main() {
	/*
	cout << "gib me some numbers, at least 20" << endl;

	int num;
	std::vector<int> nums;

	while (cin >> num) {
		nums.push_back(num);
	}
	*/

	std::vector<int> nums {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};


	std::vector<int>::size_type size = nums.size();

	int quart = size / 4;
	int rem = size % 4;


	for (int i = 0; i != size; i++) {
		switch (rem) {

			case 0:

				if (i < quart - 1) {
					cout << nums[i] << " ";
				} else if (i == quart - 1) {
					cout << nums[i] << endl;
				} else if (i < quart * 2 - 1) {
					cout << nums[i] << " ";
				} else if (i == quart * 2 - 1) {
					cout << nums[i] << endl;
				} else if (i < quart * 3 - 1) {
					cout << nums[i] << " ";
				} else if (i == quart * 3 - 1) {
					cout << nums[i] << endl;
				} else if (i < quart * 4 - 1) {
					cout << nums[i] << " ";
				} else if (i == quart * 4 - 1) {
					cout << nums[i] << endl;
				}

				break;
			case 1:
				for (int i = 0; i != size; i++){
					
				}
				break;
			case 2:
				for (int i = 0; i != size; i++){
					
				}
				break;
			case 3:
				for (int i = 0; i != size; i++){
					
				}
				break;
		}
	}

	// cout << size << endl;



	return 0;

}
