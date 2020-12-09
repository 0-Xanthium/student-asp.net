using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class stringwithcountwordlettervowelandreverse
    {
        public static void Main(string[] args)
        {
            string str,reversestr="";
            int length,letter=0,vowel=0,word=0;
            Console.WriteLine("Enter the string:");
            str = Console.ReadLine();
            length = str.Length;
            for (int i = 0; i <= length - 1; i++)
            {
                if (char.IsLetter(str[i]))
                {
                    letter++;
                }
                if(str[i]=='a' || str[i]=='e' || str[i]=='i' || str[i]=='o' || str[i]=='u')
                {
                    vowel++;
                }
                if (str[i]==' ')
                {
                    word++;
                }
            }
            for (int i = length - 1; i >= 0; i--)
            {
                reversestr += str[i];
            }
            Console.WriteLine("No of words is: " + word+1);
            Console.WriteLine("No of letter is: " + letter);
            Console.WriteLine("No of vowels is: " + vowel);
            Console.WriteLine("Revers string is: " + reversestr);
            Console.ReadLine();
        }
    }
}
