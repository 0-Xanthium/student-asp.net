using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Aspconsoleprograms
{
    class countwordletterandnoofvowel
    {
        public static void Main(string[] args)
        {
            int words=1,letter=0,vowel=0,len;
            string str;
            Console.WriteLine("Enter the String");
            str=Console.ReadLine();
            len=str.Length;
            for(int i=0;i<=len-1;i++)
            {
                if(char.IsLetter(str[i]))
                {
                    letter+=1;
                }
                if(char.IsWhiteSpace(str[i]))
                {
                    words+=1;
                }
                if(str[i]=='a' || str[i]=='e' || str[i]=='i' || str[i]=='o' || str[i]=='u')
                {
                    vowel+=1;
                }
            }
            Console.WriteLine("Count of words: " + words);
            Console.WriteLine("Letters : " + letter);
            Console.WriteLine("No of Vowels: " + vowel);
            Console.ReadLine();
        }
    }
}
