using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int holderid;
    protected void btn_folio_Click(object sender, EventArgs e)
    {

        //ViewState["holderid"] = Convert.ToInt32(Request.QueryString.Get("holderid").ToString());
        //holderid = Convert.ToInt32(ViewState["holderid"].ToString());
        ////hid = 10;
        cn.Open();
        qry = "insert into foliomaster values('" + txt_folioname.Text.Trim() + "','" + fisrtperson.SelectedItem.Value + "','" + secondperson.SelectedItem.Value + "','" + thirdperson.SelectedItem.Value + "','" + Session["userid"] + "')";
        //qry = "insert into foliomaster(folioname,firstholdername,secondholdername,thirdholdername,userid,holderid) values('" + txt_folioname.Text.Trim() + "','" + firstperson.SelectedItem.Value + "','" + secondperson.SelectedItem.Value + "','" + thirdperson.SelectedItem.Value + "','" + Session["userid"] + "','" + hid + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("folio.aspx");
    }
}