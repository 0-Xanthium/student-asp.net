using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class palindromenumber
    {
        public static void Main(string[] args)
        {
            int reverse = 0;
            int num,num1;
            Console.WriteLine("Enter the Four digit number:");
            num = Convert.ToInt32(Console.ReadLine());
            num1 = num;
            while (num > 0)
            {
                reverse = reverse * 10;
                reverse = reverse + num % 10;
                num = num / 10;
            }
            if (num1 == reverse)
            {
                Console.WriteLine("It is palindrome number");
            }
            else
            {
                Console.WriteLine("It is not palindrome number");
            }
            Console.ReadKey();
        }
    }
}
