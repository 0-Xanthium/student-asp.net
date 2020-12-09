using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InheritanceConsole
{
    class Shape
    {
        public void display()
        {

        }
        static void Main(string[] args)
        {
            Shape s = new Shape();
            Triangle t = new Triangle();
            RightAngleTriangle r = new RightAngleTriangle();
            Quadrilateral q = new Quadrilateral();
            Square sq = new Square();
            Rectangle rc = new Rectangle();



            rc.display();
            t.display();
            r.display();
            q.display();
            sq.display();
            Console.ReadKey();

        }
    }

    class Triangle : Shape 
    {
       public void display()
        {
            Console.WriteLine(" This is Triangle");
        }
    }
    class RightAngleTriangle : Triangle
    {
        public void display()
        {
            Console.WriteLine(" This is Right Angled Triangle");
        }
    }
    class Quadrilateral : Shape
    {
        public  void display()
        {
            Console.WriteLine(" This is Quadrilateral");
        }
    }
    class Rectangle : Quadrilateral
    {
        public void display()
        {
            Console.WriteLine(" This is Rectangle");
        }
    }
    class Square : Rectangle
    {
        public void display()
        {
            Console.WriteLine(" This is Square");
        }
    }
}
