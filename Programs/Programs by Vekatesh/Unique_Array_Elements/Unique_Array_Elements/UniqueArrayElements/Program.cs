using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniqueArrayElements
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] arr1 = new int[5];
            int[] arr2 = new int[5];
            int i = 0;
            int j = 0;
            int k = 0;
            int l = 0;
            int count = 0;
            int count2 = 0;
            int count3 = 0;



            for(i = 0 ; i<=4; i++)
            {
                Console.Write("Enter The " + i +"th Element Of Array 1:");
                arr1[i] = Convert.ToInt32(Console.ReadLine());
               
            }
            Console.WriteLine();
            for (j = 0; j <= 4; j++)
            {
                
                Console.Write("Enter The " + j + "th Element Of Array 2: ");
                arr2[j] = Convert.ToInt32(Console.ReadLine());

            }
            Console.WriteLine();
            //for (k = 0; k <= 4; k++)
            //{
            //    Console.WriteLine(arr1[k]);
            //}
            //for (k = 0; k <= 4; k++)
            //{
            //    Console.WriteLine(arr2[k]);
            //}

            for (k = 0; k <= 4; k++)
            {
                for (l = 0; l <= 4; l++)
                {
                    if (arr1[k] == arr2[l])
                    {
                        count = 0;
                        break;
                        
                    }
                    else
                    {
                        count = count + 1;
                        if (count == 5)
                        {
                            Console.WriteLine("Unique Element :" + arr1[k]);
                            count3 = count3 + 1;
                            count = 0;
                        }
                    }
                }
            }
            for (k = 0; k <= 4; k++)
            {
                for (l = 0; l <= 4; l++)
                {
                    if (arr2[k] == arr1[l])
                    {
                        count2 = 0;
                        break;

                    }
                    else
                    {
                        count2 = count2 + 1;
                        if (count2 == 5)
                        {
                            Console.WriteLine("Unique Element :" + arr2[k]);
                            count3 = count3 + 1;
                            count2 = 0;
                        }
                    }
                }
            }
            if (count3 == 0)
            {
                Console.WriteLine("There are No Unique Numbers");
            }
            Console.ReadKey();
        }
    }
}
