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
    int qty;
    decimal price;
    decimal total;
    
    
    protected void btn_buy_Click(object sender, EventArgs e)
    {
        qty = Convert.ToInt32(txt_qty.Text.Trim());
        //price= Convert.ToInt32(txt_price.Text.Trim());
        price = Convert.ToDecimal(txt_price.Text.Trim());
        total = qty * price;
        //DateTime dateTime = DateTime.UtcNow.Date;
        //DateTime dateOnly1 = date.Date;
        cn.Open();
        qry = "insert into buymaster values('" + text_date.Text.ToString() + "','" + buy_stock.Text.Trim() + "','" + qty + "','" + price + "','" + total + "','" + drop_folio.SelectedItem.Text  + "','" + Session["userid"] + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("buystock.aspx");
        
    }
}
