using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class methodoverloading1
    {
        public static int sum(int i, int j)
        {
            return i + j;
        }
        public static float sum(float i, float j)
        {
            return i + j;
        }
        public static void Main(string[] args)
        {
            Console.WriteLine("Sum of integer number is:" + methodoverloading1.sum(5, 8));
            Console.WriteLine("Sum of float number is: " + methodoverloading1.sum(5.5f, 8.2f));
            Console.ReadKey();
        }
    }
}
