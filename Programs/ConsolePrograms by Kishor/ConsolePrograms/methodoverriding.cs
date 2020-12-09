using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class example
    {
        public virtual void display()
        {
            Console.WriteLine("method of example class");
        }
    }
    class methodoverriding: example
    {
        public override void display()
        {
            //base.display();
            Console.WriteLine("overeride diaplay class in methodoverriding class");
        }
        public static void Main(string[] args)
        {
            methodoverriding x1 = new methodoverriding();
            x1.display();
            Console.ReadKey();
        }
    }
}
