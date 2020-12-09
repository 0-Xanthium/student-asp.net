// WAP in ASP.Net to display table from 1 to 10.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Tables1to10
{
    class Program
    {
        static void Main(string[] args)
        {
            int i=1;
            int j=1;
            for (i = 1; i <= 10; i++)
            {
                Console.WriteLine(" Table for " + i);
                Console.WriteLine("  ");
                for (j = 1; j <= 10; j++)
                {

                    Console.WriteLine( i + " * " + j + " = " + i*j);
                }
                Console.WriteLine("  ");


            }
            Console.Read();
        }
    }
}
