using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;

public partial class Forgotpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpass_Click(object sender, EventArgs e)
    {
        using (var client = new SmtpClient())
        {
            client.UseDefaultCredentials = false;
            var NetworkCredentials = new NetworkCredential() { UserName = "sapaligasriraksha@gmail.com", Password = "mhrd hmcl jjyu rqfw" };
            client.Port = 587;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Credentials = NetworkCredentials;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("sapaligasriraksha@gmail.com");
            msg.To.Add(txtemail.Text);
            msg.Subject = "Recovery Email from Postal Account";
            Random r = new Random();
            String s = r.NextDouble().ToString();
            s = s.Substring(4, 4);
            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            string str = "select * from registration where email='" + txtemail.Text + "'";
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                str = "update registration set password='" + s + "'where email='" + txtemail.Text + "'";
                dl.DmlCmd(str);
                msg.Body = "Your password is"+s;
                client.Send(msg);
                Response.Write("<script language=javascript> alert('Mail has sent') </script>");
            }
            else
            {

                Response.Write("<script language=javascript> alert('The Email is Invalid') </script>");
            }

            
        }
           
    }
}