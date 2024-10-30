using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class Withdrawal : System.Web.UI.Page
{
    public static string id =null;
    protected void Page_Load(object sender, EventArgs e)
    {

     
        lbldeposit .Text =Session ["email"].ToString();
        if (!IsPostBack)
        {
            DateTime dt = DateTime.Now;
            txtdate.Text = dt.ToString("yyyy-MM-dd");
        }

    }
    public void fillgrid()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from applicant where account_id='" + txtno.Text + "'";
        ds = dl.GetDataSet(str);
        GridView2.DataSource = ds;
        GridView2.DataMember = "table";
        GridView2.DataBind();
    }
   
    protected void btnsave_Click(object sender, EventArgs e)
    {
        int balance = 0;
        String str2 = "select deposit from applicant where account_id='" + txtno.Text + "'";
        DataSet ds3 = new DataSet();
        DataLayer d3 = new DataLayer();
        ds3 = d3.GetDataSet(str2);
         if (ds3.Tables[0].Rows.Count > 0)
         {
             balance =int.Parse (ds3 .Tables [0].Rows [0]["deposit"].ToString());
            
             
             if(int.Parse (txtamt .Text )<balance )
             {
                 String str = "insert into withdrawal( account_no, date, amount, deposited_by)values ('" + txtno.Text + "','" + txtdate.Text + "','" + txtamt.Text + "','" + lbldeposit.Text + "')";
                 DataLayer dl = new DataLayer();
                 dl.DmlCmd(str);
                 String str1 = "update applicant set deposit=deposit-'" + int.Parse(txtamt.Text) + "' where account_id='" + txtno.Text + "'";
                 dl.DmlCmd(str1);
                 fillgrid();

                 //Email code below

              //   String email = GridView1.Rows[0].Cells[13].Text;


                 using (var client = new SmtpClient())
                 {
                     client.UseDefaultCredentials = false;
                     var NetworkCredentials = new NetworkCredential() { UserName = "sapaligasriraksha@gmail.com  ", Password = "mhrd hmcl jjyu rqfw" };
                     client.Port = 587;
                     client.EnableSsl = true;
                     client.Host = "smtp.gmail.com";
                     client.Credentials = NetworkCredentials;

                     MailMessage msg = new MailMessage();
                     msg.From = new MailAddress("sapaligasriraksha@gmail.com ");
                     msg.To.Add(GridView2.Rows[0].Cells[3].Text);
                     msg.Subject = "Withdrawal Transaction";

                     msg.Body = "Your Withrawal Amount is" + txtamt.Text ;
                     client.Send(msg);


                 }
                 Response.Write("<script language=javascript> alert('Record Inserted Successfully!!! THANK YOU!!. ') </script>");
             }
             else 
             {
                 Response.Write("<script language='javascript'> alert('Balance is less!!!! cant withdraw. ')</script>");
    }
         }
    }
    protected void  btnclear_Click(object sender, EventArgs e)
{
        txtno.Text = "";
        txtdate.Text = "";
        txtamt.Text = "";
       lbldeposit.Text = "";
}
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (txtno.Text == "")
        {
            Response.Write("<script language='javascript'>alert('Please Enter Account Number')</script>");
        }
        else
        {

            fillgrid();
            String str1 = "select deposit from applicant where account_id='" + txtno.Text + "'";
            DataSet ds1 = new DataSet();
            DataLayer d2 = new DataLayer();
            ds1 = d2.GetDataSet(str1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                lblbalance.Text = ds1.Tables[0].Rows[0]["deposit"].ToString();
            }
        }
    }
}
