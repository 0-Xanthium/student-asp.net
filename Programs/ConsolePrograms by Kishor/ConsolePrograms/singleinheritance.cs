using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class employee
    {
        public float salary = 50000;
    }
    class programmer : employee
    {
        public float bonus = 10000;
    }
    class singleinheritance
    {
        public static void Main(string[] args)
        {
            programmer x1 = new programmer();
            Console.WriteLine("Salary is: " + x1.salary);
            Console.WriteLine("Bonus is: " + x1.bonus);
            Console.ReadKey();
        }
    }
}
