using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;


   

    

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txtholder.Text = "";
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into holder values('" + txtholder.Text.Trim() + "','" + Session["userid"] + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("holder.aspx");
    }
}
