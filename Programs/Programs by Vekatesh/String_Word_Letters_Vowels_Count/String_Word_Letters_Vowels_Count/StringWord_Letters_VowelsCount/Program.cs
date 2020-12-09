using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace StringWord_Letters_VowelsCount
{
    class Program
    {
        static void Main(string[] args)
        {
            String str ="";
            String str2 = "";
            String str3 = "";
            String str4 = "";
            int wordcount = 0;
            int lettercount = 0;
            int vowelcount = 0;

            str = Console.ReadLine();
            str2 = str3 = str;
            Console.WriteLine("Enterd String is :"+str);
            //word count
            wordcount= str2.Split(new Char[]{' '},StringSplitOptions.RemoveEmptyEntries).Length;
            Console.WriteLine("Words in String are  :" + wordcount);
           
            

            //letters count
            lettercount = str.Length;
            Console.WriteLine("letters including space in String are :" + lettercount);
            Console.WriteLine("letters excluding space in String are :" + ((lettercount)-(wordcount  - 1)));

            //vowel count
            for(int i =0; i< (str3.Length);i++)
            {
               if (str[i]  == 'a' || str[i] == 'e' || str[i] == 'i' || str[i] == 'o' || str[i] == 'u'|| str[i]  == 'A' || str[i] == 'E' || str[i] == 'I' || str[i] == 'O' || str[i] == 'U')
               {
                   vowelcount++;
               }
            }

            Console.WriteLine("Vowels in String are :" + vowelcount);

            str4 = new string(str.Reverse().ToArray());
           
            Console.WriteLine("Rev String are :" + str4);

            Console.ReadKey();
        }
    }
}
