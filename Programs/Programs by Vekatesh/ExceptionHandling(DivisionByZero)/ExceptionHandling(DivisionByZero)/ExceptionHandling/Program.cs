using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExceptionHandling
{
    class Program
    {  
        static void Main(string[] args)
        {
            int result=0;
            int num1 = 20;
            int num2 = 0;

            try
            {
                result = num1 / num2;
            }

            catch (DivideByZeroException e)
            {
                Console.WriteLine("Exception caught: {0}", e);
            }

            finally
            {
                Console.WriteLine("Result: {0}", result);
            }

            Console.ReadKey();
        }
    }
}
