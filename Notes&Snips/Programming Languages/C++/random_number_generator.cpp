#include <iostream>
#include <random>
#include <chrono>

int main()
{
	int seed = std::chrono::system_clock::now().time_since_epoch().count();

	std::mt19937 generator(seed);
	std::uniform_int_distribution<uint_least32_t> distribute(1,6);

	for(int repetition = 0; repetition < 10; ++repetition)
		std::cout << distribute(generator) << std::endl;

	return 0;
}