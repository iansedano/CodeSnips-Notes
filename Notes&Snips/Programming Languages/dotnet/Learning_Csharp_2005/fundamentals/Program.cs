using System;

namespace fundamentals
{
    class Program
    {

    	enum Methods // defaults to int
        {
        	YO, // 0
        	MA, // 1
        	MO = 15
    	}

    	enum temps : short
    	{
    		freeze = 0,
    		boil = 100
    	}

        static void Main(string[] args)
        {
        	byte myInt = 5;
            Console.WriteLine("Hello World! {0}", myInt);

            const short mySecondNum = 382;

            Console.WriteLine(mySecondNum);

            Console.WriteLine(Methods.MO); // MO
            Console.WriteLine((int) Methods.MO); // 15

        }
            
    }
}
