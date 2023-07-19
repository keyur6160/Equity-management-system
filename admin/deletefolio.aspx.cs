using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int folioid;
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["folioid"] = Convert.ToInt32(Request.QueryString.Get("folioid").ToString());
        folioid = Convert.ToInt32(ViewState["folioid"].ToString());
        cn.Open();
        qry = "delete from foliomaster where folioid=" + folioid;
        cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("folio.aspx");

    }
}