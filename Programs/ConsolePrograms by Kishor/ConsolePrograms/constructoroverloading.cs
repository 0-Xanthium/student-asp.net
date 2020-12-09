using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class constructoroverloading
    {
        public constructoroverloading(int i, int j)
        {
            Console.WriteLine("Sum of integer number is:" + (i+j));
        }
        public constructoroverloading(float i, float j)
        {
            Console.WriteLine("Sum of float number is:" + (i + j));
        }
        public static void Main(string[] args)
        {
            constructoroverloading x1 = new constructoroverloading(5, 4);
            constructoroverloading x2 = new constructoroverloading(5.5f, 2.5f);
            Console.ReadKey();

        }
    }
}
