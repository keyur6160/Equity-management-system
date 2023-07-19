using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string constr = ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(constr);
        string com = "Select * from buymaster";
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataSourceID = "SqlDataSource1";
        DropDownList1.DataBind();
        DropDownList1.DataTextField = "folioname";
        DropDownList1.DataValueField = "folioname";
        DropDownList1.DataBind();
    }
  
   

    protected void btn_go_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from buymaster where folioname = '" + DropDownList1.SelectedValue + "'", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        Repeater1.DataSource = "SqlDataSource1";
        Repeater1.DataBind();
        cn.Close();
    }
}