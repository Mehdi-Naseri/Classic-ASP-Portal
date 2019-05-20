using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspWebApplication.Pages
{
    public partial class SendMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Host & Ports
                //Gmail (SSL)
                DropDownList1.Items.Add("smtp.gmail.com");
                DropDownList2.Items.Add("587");
                //Hotmail (SSL)
                DropDownList1.Items.Add("smtp.live.com");
                DropDownList2.Items.Add("25");
                //Yahoo
                DropDownList1.Items.Add("smtp.mail.yahoo.com");
                //comboBox2.Items.Add("587");
                //Aol
                DropDownList1.Items.Add("smtp.aol.com");
                //comboBox2.Items.Add("587");

                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;

                // DropDownList1.IsEditable = true;
                // DropDownList2.IsEditable = true;
                TextBox3.TextMode = TextBoxMode.MultiLine;
                TextBox5.TextMode = TextBoxMode.Password;
                //DropDownList1.Style = 
                TextBox1.Focus();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                System.Net.Mail.MailMessage MailMessage1 = new System.Net.Mail.MailMessage();
                MailMessage1.To.Add(TextBox1.Text);
                MailMessage1.From = new System.Net.Mail.MailAddress(TextBox4.Text);
                MailMessage1.Subject = TextBox2.Text;
                MailMessage1.Body = TextBox3.Text;
                MailMessage1.IsBodyHtml = false;

                System.Net.Mail.SmtpClient SmtpClient1 = new System.Net.Mail.SmtpClient();
                SmtpClient1.Host = DropDownList1.Text;
                SmtpClient1.Port = int.Parse(DropDownList2.Text);
                SmtpClient1.Credentials = new System.Net.NetworkCredential(TextBox4.Text, TextBox5.Text);
                SmtpClient1.EnableSsl = CheckBox1.Checked;

                try
                {
                    SmtpClient1.Send(MailMessage1);
                    Response.Redirect("./InternalPages/SendMailSuccess.aspx");
                }
                catch
                {
                    Response.Redirect("./InternalPages/SendMailFail.aspx");
                }
            }
            catch
            {
                Response.Redirect("./InternalPages/MailError.aspx");

            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Set Host for each mail server 
            //check SSL for Gmail and Hotmail
            if (DropDownList1.SelectedIndex == 0)
            {//Gmail
                DropDownList2.SelectedIndex = 0;
                CheckBox1.Checked = true;
            }
            else if (DropDownList1.SelectedIndex == 1)
            {//Hotmail
                DropDownList2.SelectedIndex = 1;
                CheckBox1.Checked = true;
            }
            else if ((DropDownList1.SelectedIndex == 2) || (DropDownList1.SelectedIndex == 3))
            {//Yahoo & AOL
                DropDownList2.SelectedIndex = 0;
                CheckBox1.Checked = false;
            }
        }
    }
}