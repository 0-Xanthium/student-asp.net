using System;
using System.Net;

namespace ConsumeWebService
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string PingHost(string args)
        {
            HttpWebResponse res = null;

            try
            {
                // Create a request to the passed URI.  
                HttpWebRequest req = (HttpWebRequest)WebRequest.Create(args);
                req.Credentials = CredentialCache.DefaultNetworkCredentials;

                // Get the response object.  
                res = (HttpWebResponse)req.GetResponse();

                return "Service Up";
            }
            catch (Exception e)
            {
                return e.Message;
            }
        } 


        protected void btnPrime_Click(object sender, EventArgs e)
        {
            if (PingHost("http://localhost:8888/WebService1.asmx") == "Service Up")
            {
                localhost.WebService1 lw = new localhost.WebService1();

                int primeParameter = int.Parse(txtParam.Text);
                string result = lw.primeornot(primeParameter);
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = result;
            }
            else 
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Service is not available at the moment.";
            }
        }

        protected void btnFact_Click(object sender, EventArgs e)
        {
            if (PingHost("http://localhost:8888/WebService1.asmx") == "Service Up")
            {
                localhost.WebService1 lw = new localhost.WebService1();

                int factorialParameter = int.Parse(txtParam.Text);
                long result = lw.factorialno(factorialParameter);
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Factorial of " + factorialParameter + " is " + result.ToString();
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Service is not available at the moment.";
            }
        }
    }
}