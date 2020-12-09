using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    public interface drawable
    {
         void draw();
    }
    public class rectangle1 : drawable
    {
        public void draw()
        {
            Console.WriteLine("drawing rectangle");
        }
    }
   public class circle1 : drawable
    {
        public void draw()
        {
            Console.WriteLine("drawing circle");
        }
    }
    class interfaceexample
    {
        public static void Main(string[] args)
        {
            rectangle1 r = new rectangle1();
            r.draw();
            circle1 c = new circle1();
            c.draw();
            Console.ReadKey();
        }
    }
}
