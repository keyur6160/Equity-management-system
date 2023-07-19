    using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        //ViewState["username"] = Convert.ToInt32(Request.QueryString.Get("username").ToString());
    }

    protected void signin_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from user_master where useremail='" + txt_loginuser.Text + "' and password='" + txt_loginpassword.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["userid"] = dr["userid"].ToString();
            Session["username"] = dr["username"].ToString();
            Session["useremail"] = dr["useremail"].ToString();
            Session["image"] = dr["image"].ToString();
            Session["pannumber"] = dr["pannumber"].ToString();
            Session["mobileno"] = dr["mobileno"].ToString();
            //Session["gen"] = dr["gen"].ToString();

            cn.Close();
            Response.Redirect("../admin/dashboard.aspx");
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "User Not Valid....";
        }
       
    }
}