using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    public abstract class shape
    {
        public abstract void draw();
    }
    public class rectangle : shape
    {
        public override void draw()
        {
            //throw new NotImplementedException();
            Console.WriteLine("drawing rectangle");
        }
    }
    public class circle : shape
    {
        public override void draw()
        {
            //throw new NotImplementedException();
            Console.WriteLine("drawing circle");
        }
    }
    class abstractclass
    {
        public static void Main(string[] args)
        {
            rectangle r = new rectangle();
            r.draw();
            circle c = new circle();
            c.draw();
            Console.ReadKey();
        }
    }
}
