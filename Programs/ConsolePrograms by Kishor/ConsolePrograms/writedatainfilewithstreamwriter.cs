using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Aspconsoleprograms
{
    class writedatainfilewithstreamwriter
    {
        public static void Main(string[] args)
        {
            FileStream fout = new FileStream("file.txt", FileMode.OpenOrCreate);
            StreamWriter sw = new StreamWriter(fout);
            sw.WriteLine("overwrite the existing data");
            sw.Close();
            Console.ReadKey();
        }
    }
}
