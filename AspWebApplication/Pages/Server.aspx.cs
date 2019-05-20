using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspWebApplication.Pages
{
    public partial class Server : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelE.Text = "<h3>SystemInformation:</h3>" + SystemInformation();

            //Server Information
            //.....Method 1:
            Label1.Text = "Request.UserHostAddress: " + Request.UserHostAddress;
            Label2.Text = "Request.UserHostName: " + Request.UserHostName;

            Label3.Text = "Request.UserLanguages: ";
            for (int count = 0; count < Request.UserLanguages.Length; count++)
            {
                Label3.Text = Label3.Text + Request.UserLanguages[count] + "<br>";
            }
            Label4.Text = "UrlReferrer: " + Request.UrlReferrer;

            //.....Method 2:
            int loop1, loop2;
            System.Collections.Specialized.NameValueCollection coll;
            // Load ServerVariable collection into NameValueCollection object.
            coll = Request.ServerVariables;
            // Get names of all keys into a string array. 
            String[] arr1 = coll.AllKeys;
            Label5.Text = string.Empty;
            for (loop1 = 0; loop1 < arr1.Length; loop1++)
            {
                Label5.Text = Label5.Text + ("Key: " + arr1[loop1] + "<br>");
                String[] arr2 = coll.GetValues(arr1[loop1]);
                for (loop2 = 0; loop2 < arr2.Length; loop2++)
                {
                    Label5.Text = Label5.Text + ("Value " + loop2 + ": " + Server.HtmlEncode(arr2[loop2]) + "<br>");
                }
            }

            //.....Method 3:
            Label6.Text = "Request.ServerVariables[REMOTE_ADDR].ToString(): " + Request.ServerVariables["REMOTE_ADDR"].ToString();
            Label7.Text = "Request.ServerVariables[AUTH_USER].ToString(): " + Request.ServerVariables["AUTH_USER"].ToString();
        }

        private string SystemInformation()
        {
            System.Text.StringBuilder StringBuilder1 = new System.Text.StringBuilder(string.Empty);
            try
            {
                StringBuilder1.AppendFormat("Operation System: {0}<br/>", Environment.OSVersion);
                if (Environment.Is64BitOperatingSystem)
                    StringBuilder1.AppendFormat("64 Bit Operating System<br/>");
                else
                    StringBuilder1.AppendFormat("32 Bit Operating System<br/>");
                StringBuilder1.AppendFormat("SystemDirectory: {0}<br/>", Environment.SystemDirectory);
                StringBuilder1.AppendFormat("ProcessorCount: {0}<br/>", Environment.ProcessorCount);
                StringBuilder1.AppendFormat("UserDomainName: {0}<br/>", Environment.UserDomainName);
                StringBuilder1.AppendFormat("UserName: {0}<br/>", Environment.UserName);
                //Drives
                StringBuilder1.AppendFormat("LogicalDrives:<br/>");
                foreach (System.IO.DriveInfo DriveInfo1 in System.IO.DriveInfo.GetDrives())
                {
                    try
                    {
                        StringBuilder1.AppendFormat("Drive: {0}<br/>VolumeLabel: {1}<br/>DriveType: {2}<br/>DriveFormat: {3}<br/>TotalSize: {4}<br/>AvailableFreeSpace: {5}<br/>",
                            DriveInfo1.Name, DriveInfo1.VolumeLabel, DriveInfo1.DriveType, DriveInfo1.DriveFormat, DriveInfo1.TotalSize, DriveInfo1.AvailableFreeSpace);
                    }
                    catch
                    {
                    }
                }
                StringBuilder1.AppendFormat("SystemPageSize: {0}<br/>", Environment.SystemPageSize);
                StringBuilder1.AppendFormat("Version: {0}", Environment.Version);
            }
            catch
            {
            }
            return StringBuilder1.ToString();
        }

        /*
        private string DeviceInformation(string stringIn)
        {
            StringBuilder StringBuilder1 = new StringBuilder(string.Empty);
            ManagementClass ManagementClass1 = new ManagementClass(stringIn);
            //Create a ManagementObjectCollection to loop through
            ManagementObjectCollection ManagemenobjCol = ManagementClass1.GetInstances();
            //Get the properties in the class
            PropertyDataCollection properties = ManagementClass1.Properties;
            foreach (ManagementObject obj in ManagemenobjCol)
            {
                foreach (PropertyData property in properties)
                {
                    try
                    {
                        StringBuilder1.AppendLine(property.Name + ":  " + obj.Properties[property.Name].Value.ToString());
                    }
                    catch
                    {
                        //Add codes to manage more informations
                    }
                }
                StringBuilder1.AppendLine();
            }
            return StringBuilder1.ToString();
        }
          */
    }
}