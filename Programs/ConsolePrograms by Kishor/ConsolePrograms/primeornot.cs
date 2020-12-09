using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class primeornot
    {
        public static void Main(string[] args)
        {
            int num,counter=0;
            Console.WriteLine("Enter the number:");
            num = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= num; i++)
            {
                if (num % i == 0)
                {
                    counter++;
                }
            }
            if (counter == 2)
            {
                Console.WriteLine("It is prime number");
            }
            else
            {
                Console.WriteLine("It is not a prime number");
            }
            Console.ReadLine();
        }
    }
}
