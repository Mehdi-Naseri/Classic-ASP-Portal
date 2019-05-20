using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AspWebApplication.Model;

namespace AspWebApplication.Pages
{
    public partial class FileHost : System.Web.UI.Page
    {
        private PortalAspEntities db = new PortalAspEntities();


        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.DataSource = db.Uploads.ToList();
            //GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    //Save in DataBase
                    if ((FileUpload1 != null) && (FileUpload1.FileBytes.Length > 0) && (FileUpload1.FileBytes.Length < 20000000))
                    {
                        string stringfileName1 = System.IO.Path.GetFileName(FileUpload1.FileName);
                        string stringRandomFileName = System.IO.Path.GetRandomFileName();
                        string stringPath1 = System.IO.Path.Combine(Server.MapPath("~/Files/Upload/Files"), stringRandomFileName);
                        if (!System.IO.File.Exists(stringPath1))
                        {
                            FileUpload1.SaveAs(stringPath1);
                            //save file name to database
                            //var ImagesInfo1 = MoviesMrEntities1.ImagesInfoes;
                            var UploadedFile = new Model.Upload();
                            UploadedFile.UploadDateTime = DateTime.Now;
                            UploadedFile.FileName = stringfileName1;
                            UploadedFile.RandomName = stringRandomFileName;
                            UploadedFile.ContentLength = FileUpload1.FileBytes.Length;
                            UploadedFile.ContentType = FileUpload1.PostedFile.ContentType;
                            //Uploder name must be read automatically
                            UploadedFile.UploadedBy = "Guest";
                            db.Uploads.Add(UploadedFile);
                            db.SaveChanges();

                            Label1.Text = string.Format("<br /><B>Your File Uploaded Successfully:</B><br />File Length: {0}<br />File Name: {1}<br />MIME Type: {2}<br /><br />Your File Address: {3}<br />",
                                       FileUpload1.FileBytes.Length, FileUpload1.FileName, FileUpload1.PostedFile.ContentType, Server.MapPath("~/Files/Upload/Files/" + UploadedFile.RandomName));
                            //GridView1.DataSource = db.Uploads.ToList();
                            GridView1.DataBind();
                        }
                    }
                }
                else
                {
                    Label1.Text = "No file received.";
                }
            }
            catch
            {
            }
        }

        //protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        //{
        //    string stringSortExpression = e.SortExpression;
        //    SortDirection SortDirection1 = e.SortDirection;

        //    GridView1.DataSource = db.Uploads.SortBy(stringSortExpression).ToList();
        //    //GridView1.DataSource = db.Uploads.OrderBy(x => x.stringSortExpression).ToList();
        //    GridView1.DataBind();
        //}



        //void GridView1_Sort(Object sender, GridViewSortEventArgs e)
        //{
        //    string stringSortExpression = "ID";
        //    SortDirection SortDirection1 = SortDirection.Ascending;
        //    GridView1.Sort(stringSortExpression, SortDirection1);
        //}



    }
}