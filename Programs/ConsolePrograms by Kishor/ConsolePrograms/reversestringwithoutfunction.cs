using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class reversestringwithoutfunction
    {
        public static void Main(string[] args)
        {
            string str,reversestr="";
            int length;
            Console.WriteLine("Enter the string:");
            str = Console.ReadLine();
            length = str.Length;
            for (int i = length-1; i >= 0; i--)
            {
                reversestr += str[i];
            }
            Console.WriteLine("Revrese string is :" + reversestr);
            Console.ReadLine();
        }
    }
}
