using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    decimal totalAmount = 0;

    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // Retrieve the P&L item from the repeater's data source
            DataRowView item = (DataRowView)e.Item.DataItem;

            // Extract the amount from the P&L item
            decimal amount = Convert.ToDecimal(item["total"]);

            // Add the amount to the total
            totalAmount += amount;
        }
        else if (e.Item.ItemType == ListItemType.Footer)
        {
            // Display the total amount in the label control
             lblTotalAmount = (Label)e.Item.FindControl("lblTotalAmount");
            lblTotalAmount.Text = totalAmount.ToString();
            lblTotalAmount.ForeColor = System.Drawing.Color.DarkGreen;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.ItemDataBound += Repeater1_ItemDataBound;
        }
    }
}