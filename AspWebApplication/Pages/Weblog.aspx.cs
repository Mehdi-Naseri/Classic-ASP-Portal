using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AspWebApplication.Model;

namespace AspWebApplication.Pages
{
    public partial class Weblog : System.Web.UI.Page
    {
        private PortalAspEntities db = new PortalAspEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int WeblogCount = db.WeblogPosts.ToList().Count();
            for (int i=0 ; i < WeblogCount ;i++ )
            {
                //Title
                Label LabelFieldName1 = new Label();
                LabelFieldName1.Text = "Title: ";
                LabelFieldName1.Font.Bold = true;
                Label LabelData1 = new Label();
                LabelData1.Text = db.WeblogPosts.ToList().OrderByDescending(r => r.PostDateTime).Skip(i).First().Title;
                LabelData1.Font.Bold = true;

                TableCell TableCell1 = new System.Web.UI.WebControls.TableCell();
                TableCell1.Controls.Add(LabelFieldName1);
                TableCell TableCell2 = new System.Web.UI.WebControls.TableCell();
                TableCell2.Controls.Add(LabelData1);

                TableRow TableRow1 = new TableRow();
                TableRow1.Cells.Add(TableCell1);
                TableRow1.Cells.Add(TableCell2);
                Table1.Rows.Add(TableRow1);


                //PostContent
                Label LabelFieldName2 = new Label();
                LabelFieldName2.Text = "PostContent: ";
                Label LabelData2 = new Label();
                LabelData2.Text = db.WeblogPosts.ToList().OrderByDescending(r => r.PostDateTime).Skip(i).First().PostContent;
              
                TableCell TableCell21 = new System.Web.UI.WebControls.TableCell();
                TableCell21.Controls.Add(LabelFieldName2);
                TableCell TableCell22 = new System.Web.UI.WebControls.TableCell();
                TableCell22.Controls.Add(LabelData2);

                TableRow TableRow2 = new TableRow();
                TableRow2.Cells.Add(TableCell21);
                TableRow2.Cells.Add(TableCell22);
                Table1.Rows.Add(TableRow2);

                //Writer
                Label LabelFieldName3 = new Label();
                LabelFieldName3.Text = "Writer: ";
                Label LabelData3 = new Label();
                LabelData3.Text = db.WeblogPosts.ToList().OrderByDescending(r => r.PostDateTime).Skip(i).First().Writer;

                TableCell TableCell31 = new System.Web.UI.WebControls.TableCell();
                TableCell31.Controls.Add(LabelFieldName3);
                TableCell TableCell32 = new System.Web.UI.WebControls.TableCell();
                TableCell32.Controls.Add(LabelData3);

                TableRow TableRow3 = new TableRow();
                TableRow3.Cells.Add(TableCell31);
                TableRow3.Cells.Add(TableCell32);
                Table1.Rows.Add(TableRow3);

                //PostDateTime
                Label LabelFieldName4 = new Label();
                LabelFieldName4.Text = "PostDateTime: ";
                Label LabelData4 = new Label();
                LabelData4.Text = db.WeblogPosts.ToList().OrderByDescending(r => r.PostDateTime).Skip(i).First().PostDateTime.ToString();

                TableCell TableCell41 = new System.Web.UI.WebControls.TableCell();
                TableCell41.Controls.Add(LabelFieldName4);
                TableCell TableCell42 = new System.Web.UI.WebControls.TableCell();
                TableCell42.Controls.Add(LabelData4);

                TableRow TableRow4 = new TableRow();
                TableRow4.Cells.Add(TableCell41);
                TableRow4.Cells.Add(TableCell42);
                Table1.Rows.Add(TableRow4);

                //End of a post
                Panel Panel1 = new Panel();
                Panel1.Height = 40;
                Panel1.Width = 10;
                Panel Panel2= new Panel();
                //Panel2.Height = 50;
                Panel2.Width = 400;

                TableCell TableCell51 = new TableCell();
                TableCell51.Controls.Add(Panel1);
                TableCell51.BackColor = System.Drawing.Color.FromArgb(153, 255, 204);
                TableCell TableCell52 = new TableCell();
                TableCell52.Controls.Add(Panel2);
                TableCell52.BackColor = System.Drawing.Color.FromArgb(153, 255, 204);
                TableRow TableRow5 = new TableRow();
                TableRow5.Cells.Add(TableCell51);
                TableRow5.Cells.Add(TableCell52);
                Table1.Rows.Add(TableRow5);
                
            }
        }
    }
}