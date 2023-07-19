using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    FileUpload1.ImageUrl = "~/admin/images/avatar/" + Session["adminprofilepicture"].ToString();

        //}
       userphoto.ImageUrl = "~/admin/images/" + Session["image"].ToString();
        lblname.Text = Session["username"].ToString();
        //ViewState["username"]= Session["username"].ToString(); 

    }
}
