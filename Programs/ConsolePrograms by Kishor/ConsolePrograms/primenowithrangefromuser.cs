using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class primenowithrangefromuser
    {
        public static void Main(string[] args)
        {
            int first, last,counter;
            Console.WriteLine("Enter the first number:");
            first = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the last number:");
            last = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Prime numbers are:");
            for (int i = first; i <= last; i++)
            {
                counter = 0;
                for (int j = 1; j <= i; j++)
                {
                    if (i % j == 0)
                    {
                        counter++;
                    }
                }
                if (counter == 2)
                {
                    Console.WriteLine(i);
                }
            }
            Console.ReadKey();
            
        }
    }
    
}
