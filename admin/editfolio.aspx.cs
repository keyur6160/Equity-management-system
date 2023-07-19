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
    SqlDataReader dr;
    int folioid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["folioid"] = Convert.ToUInt32(Request.QueryString.Get("folioid").ToString());
            cn.Open();
            qry = "select * from foliomaster where folioid =" + ViewState["folioid"];
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_folioname.Text = dr["folioname"].ToString();
            }
            cn.Close();
        }
    }

   
    protected void btnedit_Click(object sender, EventArgs e)
    {
        folioid = Convert.ToInt32(ViewState["folioid"].ToString());
        cn.Open();
        qry = "update foliomaster set folioname='" + txt_folioname.Text.Trim() + "' where folioid=" + folioid;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("folio.aspx");
    }
}