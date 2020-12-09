using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Fibonaccinumber
{
    class Program
    {
        static void Main(string[] args)
        {

            int a = 0;     // assigning initaial value for first varible
            int b = 1;     // assigning initaial value for second  varible
            int c = 1;     // assigning initaial value for third varible
           // int count = 0;
            int i=0;
            Console.WriteLine(a);
            Console.WriteLine(b);
            for(i=0;i<=7;i++)
            {

                c = a + b;
                
                Console.WriteLine(c);
                a = b;
                b = c;

            }
            Console.Read();  // to keep windows screen after running

        }
    }
}
