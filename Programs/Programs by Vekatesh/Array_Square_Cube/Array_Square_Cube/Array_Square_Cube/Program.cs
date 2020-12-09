using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_Square_Cube
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] arr = new int[5];
            int[] arr_sq = new int[5];
            int[] arr_cu = new int[5];

            for(int i=0; i<=4; i++)
            {
                Console.WriteLine("Enter Element " + (i + 1));
                arr[i] = Convert.ToInt32(Console.ReadLine());
                arr_sq[i] = arr[i] * arr[i];
                arr_cu[i] = arr[i] * arr[i] * arr[i];
            }

            Console.WriteLine("Array: ");
            for (int i = 0; i <= 4; i++)
            {
                Console.WriteLine(arr[i]);
            }

            Console.WriteLine("Square Array: ");
            for (int i = 0; i <= 4; i++)
            {
                Console.WriteLine(arr_sq[i]);
            }

            Console.WriteLine("Cube Array: ");
            for (int i = 0; i <= 4; i++)
            {
                Console.WriteLine(arr_cu[i]);
            }

            Console.ReadKey();
        }
    }
}
