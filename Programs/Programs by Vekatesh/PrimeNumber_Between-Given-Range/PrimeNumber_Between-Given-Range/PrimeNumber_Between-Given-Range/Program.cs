using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace PrimeNumber_Between_Given_Range
{
    class Program
    {
        static void Main(string[] args)
        {

    int num1, num2, i, j, flag, temp, count = 0;
 
    Console.WriteLine("Enter the Value For num1 ");
    num1= Convert.ToInt32(Console.ReadLine());

    Console.WriteLine("Enter the Value For num2 ");
    num2= Convert.ToInt32(Console.ReadLine());
    

    
    //if (num2 < 2)
    //{
    //  Console.WriteLine("There are no primes upto " + num2);
        
    //}

    Console.WriteLine("Prime numbers are ");
    temp = num1;
    if ( num1 % 2 == 0)
    {
       num1++;
    }
    for (i = num1; i <= num2; i = i+1)
    {
        flag = 0;
        for (j = 2; j <= i / 2; j++)
        {
           if ((i % j) == 0)
           {
               flag = 1;
               break;
          }

       }
        if (flag == 0)
        {
            Console.WriteLine(" " + i);
            count++;
        }
    }
    Console.WriteLine("Number of primes between "+ temp +"&" + num2 + " is " + count);
    Console.Read();
}
        }
    }






    