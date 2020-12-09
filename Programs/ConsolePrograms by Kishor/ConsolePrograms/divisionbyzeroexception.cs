using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class divisionbyzeroexception
    {
        public static void Main(string[] args)
        {
            int x = 1, y = 0,z;
            try
            {
                z = x / y;
            }
            catch(DivideByZeroException ex)
            {
                Console.WriteLine(ex.Message);
            }
            Console.ReadLine();
        }
    }
}
