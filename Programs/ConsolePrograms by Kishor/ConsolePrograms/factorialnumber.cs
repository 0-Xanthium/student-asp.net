using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class factorialnumber
    {
        public static void Main(string[] args)
        {
            int fact = 1;
            int num;
            Console.WriteLine("Enter the number:");
            num = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= num; i++)
            {
                fact = fact * i;
            }
            Console.WriteLine("Factorial is:" + fact);
            Console.ReadLine();
        }
    }
}
