using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExceptionHandling_IndexOutOfRange_
{
        class Program
        {
            static void Main(string[] args)
            {
                int[] array = new int[100];
                int sum=0;

                try
                {
                    array[0] = 1;
                    array[10] = 2;
                    array[200] = 3;
                    sum = array[0] + array[10] + array[200];
                }

                catch (IndexOutOfRangeException e)
                {
                    Console.WriteLine("Exception caught: {0}", e);
                }

                finally
                {
                    Console.WriteLine("Sum: {0}", sum);
                }

                Console.ReadKey();
            }
    }

}
