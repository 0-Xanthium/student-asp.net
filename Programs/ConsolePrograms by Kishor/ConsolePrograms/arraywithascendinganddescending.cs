using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class arraywithascendinganddescending
    {
        public static void Main(string[] args)
        {
            int[] arr = new int[10];
            Console.WriteLine("Enter the 10 digit number:");
            for (int i = 0; i <= 9; i++)
            {
                arr[i] = Convert.ToInt32(Console.ReadLine());
            }
            for(int i = 0; i <= 9; i++)
            {
                for(int j = i + 1; j <= 9; j++)
                {
                    if (arr[i] > arr[j])
                    {
                        int temp = arr[i];
                        arr[i] = arr[j];
                        arr[j] = temp;
                    }
                }
            }
            Console.WriteLine("---------------Ascending order----------------");
            for (int i = 0; i <= 9; i++)
            {
                Console.WriteLine(arr[i]);
            }
            for (int i = 0; i <= 9; i++)
            {
                for (int j = i + 1; j <= 9; j++)
                {
                    if (arr[i] < arr[j])
                    {
                        int temp = arr[i];
                        arr[i] = arr[j];
                        arr[j] = temp;
                    }
                }
            }
            Console.WriteLine("---------------Descending order----------------");
            for (int i = 0; i <= 9; i++)
            {
                Console.WriteLine(arr[i]);
            }
            Console.ReadKey();
        }
    }
}
