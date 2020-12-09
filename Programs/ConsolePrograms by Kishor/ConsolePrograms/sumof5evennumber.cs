using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class sumof5evennumber
    {
        public static void Main(string[] args)
        {
            int count = 0;
            int sum = 0;
            for (int i = 1; i <= 10; i++)
            {
                if (i % 2 == 0)
                {
                    sum += i;
                    count+=1;
                }
                if (count == 5)
                {
                    break;
                }
            }
            Console.WriteLine("Sum of Even number:" + sum);
            Console.ReadKey();
        }
    }
}
