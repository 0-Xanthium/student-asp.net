using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Aspconsoleprograms
{
    class readingfilewithstreamreader
    {
        public static void Main(string[] args)
        {
            FileStream fin = new FileStream("file.txt", FileMode.OpenOrCreate);
            StreamReader sr = new StreamReader(fin);
            string line = sr.ReadLine();
            while(line != null)
            {
                Console.WriteLine(line);
                line = sr.ReadLine();
            }
            Console.ReadKey();
        }
    }
}
