using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text;
using System.Net;
using System.Net.NetworkInformation;

namespace AspWebApplication.Pages
{
    public partial class WebTools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Text.StringBuilder StringBuilder1 = new System.Text.StringBuilder(string.Empty);
            try
            {
                IPHostEntry hostInfo = Dns.Resolve(TextBox1.Text);
                // Get the IP address list that resolves to the host names contained in the 
                // Alias property.
                IPAddress[] address = hostInfo.AddressList;
                // Get the alias names of the addresses in the IP address list.
                String[] alias = hostInfo.Aliases;

                StringBuilder1.Append("Host name : " + hostInfo.HostName + "<br/>");
                StringBuilder1.Append("<br/>Aliases :<br/>");
                for (int index = 0; index < alias.Length; index++)
                {
                    StringBuilder1.AppendLine(alias[index] + "<br/>");
                }
                StringBuilder1.Append("<br/>IP Address list :<br/>");
                for (int index = 0; index < address.Length; index++)
                {
                    StringBuilder1.Append(address[index] + "<br/>");
                }
            }
            catch
            {

            }
            Label1.Text = StringBuilder1.ToString();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            StringBuilder StringBuilder1 = new StringBuilder();

            Ping pingSender = new Ping();
            PingOptions options = new PingOptions();

            // Use the default Ttl value which is 128,
            // but change the fragmentation behavior.
            options.DontFragment = true;

            // Create a buffer of 32 bytes of data to be transmitted.
            string data = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
            byte[] buffer = System.Text.Encoding.ASCII.GetBytes(data);
            int timeout = 120;
            //TextBox 2 hold Address to be pinged 
            PingReply reply = pingSender.Send(TextBox2.Text, timeout, buffer, options);
            if (reply.Status == IPStatus.Success)
            {
                StringBuilder1.AppendFormat("Address: {0}", reply.Address.ToString());
                StringBuilder1.AppendFormat("RoundTrip time: {0}", reply.RoundtripTime);
                StringBuilder1.AppendFormat("Time to live: {0}", reply.Options.Ttl);
                StringBuilder1.AppendFormat("Don't fragment: {0}", reply.Options.DontFragment);
                StringBuilder1.AppendFormat("Buffer size: {0}", reply.Buffer.Length);
                StringBuilder1.AppendFormat("End");
            }

            Label2.Text = StringBuilder1.ToString();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            StringBuilder StringBuilder1 = new StringBuilder();
            // used on each read operation
            byte[] buf = new byte[8192];
            string GS = "http://google.com/search?q=" + TextBox3.Text;
            // prepare the web page we will be asking for
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(GS);

            // execute the request
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();

            // we will read data via the response stream
            System.IO.Stream resStream = response.GetResponseStream();
            string tempString = null;
            int count = 0;
            do
            {
                // fill the buffer with data
                count = resStream.Read(buf, 0, buf.Length);
                // make sure we read some data
                if (count != 0)
                {
                    // translate from bytes to ASCII text
                    tempString = Encoding.ASCII.GetString(buf, 0, count);

                    // continue building the string
                    StringBuilder1.Append(tempString);
                }
            }
            while (count > 0);

            Label3.Text = StringBuilder1.ToString();
        }
    }
}