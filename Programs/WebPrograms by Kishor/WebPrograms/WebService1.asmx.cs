using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebPrograms
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public int factorialno(int num)
        {
            int num1 = num;
            int fact = 1;
            for (int i = 1; i <= num; i++)
            {
                fact = fact * i;
            }
            return fact;
        }
        [WebMethod]
        public string primeornot(int num)
        {
            int num1 = num;
            int counter = 0;
            for (int i = 1; i <= num1; i++)
            {
                if (num1 % i == 0)
                {
                    counter++;
                }
            }
            if (counter == 2)
            {
                return "It is prime number";
            }
            else
            {
                return "It is not prime number";
            }
        }
    }
}
