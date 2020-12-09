using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class arraywithuniqueelement
    {
        public static void Main(string[] args)
        {
           
            int[] arr1 = new int[5];
            int[] arr2 = new int[5];
            int count1 = 0;
            int count2 = 0;
            int count3 = 0;
            Console.WriteLine("Enter the 5 values in array1:");
            for (int i = 0; i <= 4; i++)
            {
                arr1[i]=Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine("Enter the 5 values in array2:");
            for (int i = 0; i <= 4; i++)
            {
                arr2[i] = Convert.ToInt32(Console.ReadLine());
            }
            for (int i = 0; i <= 4; i++)
            {
                for (int j = 0; j <= 4; j++)
                {
                    if (arr1[i] == arr2[j])
                    {
                        count1 = 0;
                        break;
                    }
                    else
                    {
                        count1 += 1;
                        if (count1 == 5)
                        {
                            Console.WriteLine("Unique value:" + arr1[i]);
                        }
                        count3 += 1;
                    }
                }
                
            }

            for (int i = 0; i <= 4; i++)
            {
                for (int j = 0; j <= 4; j++)
                {
                    if (arr2[i] == arr1[j])
                    {
                        count2 = 0;
                        break;
                    }
                    else
                    {
                        count2 += 1;
                        if (count2 == 5)
                        {
                            Console.WriteLine("Unique Value:" + arr2[i]);
                        }
                        count3 += 1;
                    }
                }
            }
            if (count3 == 0)
            {
                Console.WriteLine("No unique value are there");
            }
            Console.ReadLine();
        }
    }
}
