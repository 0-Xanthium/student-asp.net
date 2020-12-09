using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class parameterizeconstructor
    {
        public parameterizeconstructor(int i,int j)
        {
            Console.WriteLine("Sum of two integer:" + (i + j));
        }
        public static void Main(string[] args)
        {
            int i, j;
            Console.WriteLine("Enter the first number:");
            i = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the second number:");
            j = Convert.ToInt32(Console.ReadLine());
            parameterizeconstructor x1 = new parameterizeconstructor(i,j);
            Console.ReadKey();
        }
    }
}
