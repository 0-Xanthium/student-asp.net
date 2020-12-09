using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class classwithconstructor
    {
        int rollno;
        string name;
        public classwithconstructor(int roll,string nameparam)
        {
            rollno = roll;
            name = nameparam;
        }
        public void display()
        {
            Console.WriteLine("Roll no :" + rollno);
            Console.WriteLine("Name : " + name);
        }
        public static void Main(string[] args)
        {
            classwithconstructor x1 = new classwithconstructor(1,"kishor");
            x1.display();
            Console.ReadKey();
        }
    }
}
