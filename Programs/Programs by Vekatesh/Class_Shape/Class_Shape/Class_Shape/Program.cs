using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class_Shape
{
    class Shape
    {
        public Double area, r, l, b;
        static void Main(string[] args)
        {
            Circle objC = new Circle();
            Rectangle objR = new Rectangle();
            Square objS = new Square();

            int choose;

            Console.WriteLine("1. Circle \n2. Rectangle\n3. Square\n\nEnter Input: ");
            choose = Convert.ToInt32(Console.ReadLine());

            switch(choose)
            {
                case 1:
                {
                        objC.carea();
                }

                break;

                case 2:
                {
                    objR.carea();
                }

                break;

                case 3:
                {
                    objS.carea();
                }

                break;

                default:
                {
                    Console.WriteLine("Invalid Input!");
                }

                break;
            }

            Console.ReadKey();
        }
    }

    class Circle : Shape
    {
        public void carea()
        {
            Console.WriteLine("Enter Radius: ");
            r = Convert.ToDouble(Console.ReadLine());
            area = 3.14 * r * r;
            Console.WriteLine("Area of Circle is: "+area);
        }
    }

    class Rectangle : Shape
    {
        public void carea()
        {
            Console.WriteLine("Enter Length: ");
            l = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter Breadth: ");
            b = Convert.ToDouble(Console.ReadLine());
            area = l*b;
            Console.WriteLine("Area of Recatangle is: " + area);
        }
    }

    class Square : Shape
    {
        public void carea()
        {
            Console.WriteLine("Enter Side: ");
            l = Convert.ToDouble(Console.ReadLine());
            area = l*l;
            Console.WriteLine("Area of Square is: " + area);
        }
    }
}
