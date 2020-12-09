using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class methodoverloading
    {
        public void sum(int i, int j)
        {
            Console.WriteLine("Sum of integer number is:" + (i + j));
        }
        public void sum(float i, float j)
        {
            Console.WriteLine("Sum of float number is:" + (i + j));
        }
        public static void Main(string[] args)
        {
            methodoverloading x1 = new methodoverloading();
            x1.sum(5, 6);
            x1.sum(5.5f, 6.5f);
            Console.ReadKey();
        }
    }
}
