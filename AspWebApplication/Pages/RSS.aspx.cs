using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspWebApplication.Pages
{
    public partial class RSS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CreateRSS();
                //Response.Redirect("RSS.rss");
            }

        }
        private void CreateRSS()
        {
            //...XmlTextWriter RSSFeed = new XmlTextWriter(MapPath("./" + "RSS.rss"), System.Text.Encoding.UTF8);

            System.Xml.XmlTextWriter RSSFeed = new System.Xml.XmlTextWriter(Response.OutputStream, System.Text.Encoding.UTF8);
            // Write the rss tags like title, version,
            // Channel, title, link description copyright etc. 
            RSSFeed.WriteStartDocument();
            RSSFeed.WriteStartElement("rss");
            RSSFeed.WriteAttributeString("version", "2.0");
            RSSFeed.WriteStartElement("channel");
            RSSFeed.WriteElementString("title", "Mehdi Naseri RSS");
            RSSFeed.WriteElementString("description", "This Website has been made by: Mehdi Naseri");
            RSSFeed.WriteElementString("link", "http://naseri.somee.com");
            RSSFeed.WriteElementString("pubDate", DateTime.Now.ToString("ddd, dd MMM yyyy HH:mm:ss +0000"));
            RSSFeed.WriteElementString("copyright", "Copyright Mehdi Naseri 2012");
            //Items of RSS
            for (int i = 0; i < 3; i++)
            {
                RSSFeed.WriteStartElement("item");
                RSSFeed.WriteElementString("title", string.Format("Title " + (i + 1).ToString()));
                RSSFeed.WriteElementString("description", string.Format("Description " + (i + 1).ToString()));
                RSSFeed.WriteElementString("link", "http://naseri.somee.com/RSS.aspx");
                //RSSFeed.WriteElementString("pubDate", "Mon, 06 Sep 2009 16:45:00 +0000");
                RSSFeed.WriteElementString("pubDate", DateTime.Now.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss +0000"));
                RSSFeed.WriteEndElement();
            }
            RSSFeed.WriteEndElement();
            RSSFeed.WriteEndElement();
            RSSFeed.WriteEndDocument();
            RSSFeed.Flush();
            RSSFeed.Close();
            Response.End();
        }
    }
}