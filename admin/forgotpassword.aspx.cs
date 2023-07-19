using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
using System.Configuration;
using System.Web.UI.WebControls;
using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System.Drawing;
using Microsoft.SqlServer.Server;
using System.Net;

public partial class admin_forgotpassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string username = string.Empty;
        string pass = string.Empty;
        string constr = ConfigurationManager.ConnectionStrings["Stockconst"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT username, [password] FROM USER_MASTER WHERE useremail = @Email"))
            {
                cmd.Parameters.AddWithValue("@Email", txt_email.Text.Trim());
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["username"].ToString();
                        pass = sdr["password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(pass))
        {
            MailMessage mm = new MailMessage("sender@gmail.com", txt_email.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is ::{1}.<br /><br />Thank You.", username, pass);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "keyurrana.mscict2022@vnsgu.ac.in";
            NetworkCred.Password = "K1Y2R@6160";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblmessage.ForeColor = Color.Green;
            lblmessage.Text = "Password has been sent to your email address.";
            Response.Redirect("login.aspx");
        }
      
        else
        {
            lblmessage.ForeColor = Color.Red;
            lblmessage.Text = "This email address does not match our records.";
        }
    }
}
        //    cn.Open();
        //    qry = "select * from user_master where useremail='" + txt_email.Text + "'";
        //    //qry="select username and [password] from user_master where useremail='" + txt_email.Text +  "'";
        //    cmd = new SqlCommand(qry, cn);
        //    dr = cmd.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        dr.Read();
        //        string username = dr["username"].ToString();
        //        string pass = dr["password"].ToString();
        //        cn.Close();
        //    }
        //    if (!string.IsNullOrEmpty(password))
        //    {

        //        MailMessage mail = new MailMessage();
        //        string mailid = txt_email.Text;
        //        mail.To.Add(mailid);
        //        mail.From = new MailAddress("keyurrana.mscict2022@vnsgu.ac.in");
        //        mail.Subject = "Forget Password";
        //        //string Body = "YOUR PASSWORD IS::" + pass;
        //        string Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
        //        mail.Body = Body;
        //        mail.IsBodyHtml = true;

        //        SmtpClient smtp = new SmtpClient();

        //        smtp.Host = "smtp.gmail.com";
        //        smtp.Credentials = new System.Net.NetworkCredential("keyurrana.mscict2022@vnsgu.ac.in", "K1Y2R@6160");
        //        smtp.Port = 587;
        //        smtp.EnableSsl = true;
        //        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

        //        smtp.Send(mail);
        //        Response.Redirect("login.aspx");
        //    }

        //    else
        //    {
        //        lblmessage.ForeColor = Color.Red;
        //        lblmessage.Text = "This email address does not match our records....";
        //          Response.Redirect("forgotpassword.aspx");
        //    }
        //}    

   