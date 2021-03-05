/**
 * A structure is a sesquence of elements (members)
 */


struct myStruct{
	int myNum;
	char *name;
};

int main() {
	myStruct example = {3, "i am an instance"};
	
	myStruct *p = &example;
	
	std::cout << example.name << std::endl;
	std::cout << p->name << std::endl;
}


// ============
// 

struct tree{
	int value;
	struct tree *left, *right;
};

int main(){
	tree test = {1};

	std::cout << test.value << std::endl;

    tree left = {2};
    tree right = {3};
    
    tree root = {1, &left, &right};
    
    std::cout << root.left->value << std::endl;
	return 0;
}