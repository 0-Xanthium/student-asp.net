using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class armstrongno1to1000
    {
        public static void Main(string[] args)
        {
            int a, b, c;
            for (int i = 1; i <= 1000; i++)
            {
                c = 0;
                int num = i;
                int num1 = i;
                while (num > 0)
                {
                    a = num % 10;
                    b = a * a * a;
                    c = c + b;
                    num = num / 10;
                }
                if (num1 == c)
                {
                    Console.WriteLine(c);
                }
            }
            Console.ReadKey();
        }
    }
}
