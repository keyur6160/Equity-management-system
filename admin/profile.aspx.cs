using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int userid;
    string gen;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            cn.Open();
            qry = "select * from user_master where userid=" + Session["userid"];
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                userphoto.ImageUrl = "~/admin/images/" + Session["image"].ToString();
                lblname.Text = Session["username"].ToString();
                lblemail.Text = Session["useremail"].ToString();
                txtuname.Text = Session["username"].ToString();
                txt_pan.Text = Session["pannumber"].ToString();
                txt_email.Text = Session["useremail"].ToString();
                txt_mobile.Text = Session["mobileno"].ToString();
               
            }
            cn.Close();
        }    
           
        

    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "update user_master set username='" + txtuname.Text.Trim() + "',useremail='" + txt_email.Text.Trim() + "',mobileno='"+txt_mobile.Text.Trim()+"',image='"+FileUpload1.FileName+"'where userid='" + Session["userid"]+"'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("login.aspx");
    }
}