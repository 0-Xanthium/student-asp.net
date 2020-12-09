using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class fibonacciseries
    {
        public static void Main(string[] args)
        {
            int first = 0, second = 1, next;
            for (int i = 0; i <= 10; i++)
            {
                if (i == 1)
                {
                    next = i;
                }
                else
                {
                    next = first + second;
                    first = second;
                    second = next;
                }
                Console.WriteLine(next);
            }
            Console.ReadKey();
        }
    }
}
