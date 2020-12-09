using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class armstrongornot
    {
        public static void Main(string[] args)
        {
            int a, b, c = 0;
            int num, num1;
            Console.WriteLine("Enter the number:");
            num = Convert.ToInt32(Console.ReadLine());
            num1 = num;
            while (num > 0)
            {
                a = num % 10;
                b = a * a * a;
                c = c + b;
                num = num / 10;
            }
            if (num1 == c)
            {
                Console.WriteLine("It is armstrong number");
            }
            else
            {
                Console.WriteLine("It is not armstrong number");
            }
            Console.ReadKey();
        }
    }
}
