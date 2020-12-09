using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Aspconsoleprograms
{
    class student
    {
        int studentID,percentage;
        string name, qualification;
        public void GetData()
        {
            FileStream fout = new FileStream("file.txt", FileMode.Create);
            StreamWriter sw = new StreamWriter(fout);
            Console.Write("Enter the Student ID:");
            studentID = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter the name:");
            name = Console.ReadLine();
            Console.Write("Enter your qualification:");
            qualification = Console.ReadLine();
            Console.Write("Enter your percentage:");
            percentage = Convert.ToInt32(Console.ReadLine());
            sw.WriteLine(studentID);
            sw.WriteLine(name);
            sw.WriteLine(qualification);
            sw.WriteLine(percentage);
            sw.Close();
        }
        public void ShowData()
        {
            Console.WriteLine("student ID:" + studentID);
            Console.WriteLine("Name :" + name);
            Console.WriteLine("qualification:" + qualification);
            Console.WriteLine("percentage:" + percentage);
        }
    }
    class classwithdatamemberandfile
    {
        public static void Main(string[] args)
        {
            student x1 = new student();
            x1.GetData();
            x1.ShowData();
            Console.ReadLine();
        }
    }
}
