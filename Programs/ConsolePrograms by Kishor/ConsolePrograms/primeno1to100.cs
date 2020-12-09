using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class primeno1to100
    {
        public static void Main(string[] args)
        {
            int counter;
            for (int i = 1; i <= 100; i++)
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
