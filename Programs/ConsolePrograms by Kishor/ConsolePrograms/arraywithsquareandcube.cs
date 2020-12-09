using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class arraywithsquareandcube
    {
        public static void Main(string[] args)
        {
            int[] arr = new int[5];
            Console.WriteLine("Enter the five number:");
            for (int i = 0; i <= 4; i++)
            {
                arr[i] = Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine("square of second array is:" + (arr[1] * arr[1]));
            Console.WriteLine("cube of second array is:" + (arr[1] * arr[1]) * arr[1]);
            Console.WriteLine("square of third array is:" + (arr[2] * arr[2]));
            Console.WriteLine("cube of third array is:" + (arr[2] * arr[2]) * arr[2]);
            Console.ReadKey();
        }
    }
}
