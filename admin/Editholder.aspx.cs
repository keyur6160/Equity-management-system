using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int holderid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["holderid"] = Convert.ToUInt32(Request.QueryString.Get("holderid").ToString());
            cn.Open();
            qry = "select * from holder where holderid=" + ViewState["holderid"];
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtholder.Text = dr["holdername"].ToString();
            }
            cn.Close();
        }
    }

   
   

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("holder.aspx");
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        holderid = Convert.ToInt32(ViewState["holderid"].ToString());
        cn.Open();
        qry = "update holder set holdername='" + txtholder.Text.Trim() + "' where holderid=" + holderid;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("holder.aspx");
    }
}