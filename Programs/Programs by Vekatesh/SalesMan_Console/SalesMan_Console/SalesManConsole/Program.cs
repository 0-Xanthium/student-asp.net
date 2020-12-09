using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesManConsole
{
    class Salesman
    {
        public int sid=1;
        public String sname="Venky", sadd="Mulund";

        public void display()
        {
            Console.WriteLine("Salesman ID: "+sid);
            Console.WriteLine(sname);
            Console.WriteLine(sadd);
        }
        static void Main(string[] args)
        {
            Salesman objS = new Salesman();
            objS.display();
            Console.ReadKey();
        }
    }
}
