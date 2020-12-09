using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    public class animal
    {
        public void eat()
        {
            Console.WriteLine("Eating...");
        }
    }
    public class dog : animal
    {
        public void bark()
        {
            Console.WriteLine("Barking...");
        }
    }
    public class babydog : dog
    {
        public void weep()
        {
            Console.WriteLine("Weeping...");
        }
    }
    class multilevelinheritance
    {
        public static void Main(string[] args)
        {
            babydog x1 = new babydog();
            x1.eat();
            x1.bark();
            x1.weep();
            Console.ReadKey();
        }
    }
}
