using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int holderid;
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["holderid"] = Convert.ToInt32(Request.QueryString.Get("holderid").ToString());
        holderid = Convert.ToInt32(ViewState["holderid"].ToString());
        cn.Open();
        qry = "delete from holder where holderid=" + holderid;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("holder.aspx");
    }
}