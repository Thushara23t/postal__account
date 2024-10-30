using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ChangePass : System.Web.UI.Page
{
    public static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtnewpass.Text == txtcpass.Text)
        {
            DataLayer dl = new DataLayer();
            String str = "select password from registration where password='" + txtpass.Text + "' and email='" + Session["email"].ToString() + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            if(ds.Tables[0].Rows.Count > 0)
            {
                String st = "update registration set password='" + txtnewpass.Text + "' where email='" + Session["email"].ToString() + "'";
                dl.DmlCmd(st);
            }
            else
            {
                Label1.Text = "Invalid Current Password";
            }
        }
        else
        {
            Label2.Text = "Invalid Password Confirmation Doesn't Match";
        }
        Response.Write("<script language=javascript>alert('Your Password has been updated, THANK YOU !!')</script>");

    }
}