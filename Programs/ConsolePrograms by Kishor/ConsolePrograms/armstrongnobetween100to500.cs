using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class armstrongnobetween100to500
    {
        public static void Main(string[] args)
        {
            int a, b, c,num,num1;
            for (int i = 100; i <= 500; i++)
            {
                c = 0;
                num = i;
                num1 = num;
                while (num > 0)
                {
                    a = num % 10;
                    b = a * a * a;
                    c = b + c;
                    num = num / 10;
                }
                if (c == num1)
                {
                    Console.WriteLine(i);
                }
            }
            Console.ReadKey();
        }
    }
}
