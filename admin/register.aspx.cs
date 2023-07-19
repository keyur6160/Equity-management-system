using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string gen;
    protected void btn_submit_Click(object sender, EventArgs e)
    {


        if (FileUpload1.HasFile)
        {
            //string image = FileUpload1.FileName;
            //FileUpload1.SaveAs(Server.MapPath("~/admin/images/" + image));
            //Image.ImageUrl = "../admin/images/" + image ;
            string fileextension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileextension.ToLower() != ".jpg" && fileextension.ToLower() != ".jpeg" && fileextension.ToLower() != ".png")
            {
                lblimg.Text = "Please Select Only jpg,jpeg or png Files";
                lblimg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                int filesize = FileUpload1.PostedFile.ContentLength;
                if (filesize > 2097152)
                {
                    lblimg.Text = "File Size Is To Large";
                    lblimg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("~/admin/images/" + FileUpload1.FileName));
                    lblimg.Text = "File Uploaded Successfully";
                    lblimg.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
        else
        {
            lblimg.Text = "Please Select File";
            lblimg.ForeColor = System.Drawing.Color.Red;
        }
            if (RadioButton1.Checked)
            {
                gen = RadioButton1.Text;
            }
            else
            {
                gen = RadioButton2.Text;
            }
            cn.Open();
            qry = "insert into user_master values('" + txtuname.Text.Trim() +  "','" + txtemail.Text.Trim() + "','" + txtpassword.Text.Trim() + "','" + txtmobile.Text.Trim() + "','" + txtpancard.Text.Trim() + "','" + FileUpload1.FileName  + "','" + gen + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("login.aspx");
        
      
    }
}