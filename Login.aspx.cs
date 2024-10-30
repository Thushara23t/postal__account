using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        DataLayer dl = new DataLayer();
        String str = "select * from registration where email='" + txtemail.Text + "' and password='" + txtpass.Text + "'";
        DataSet ds = new DataSet();
        ds=dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count>0)
        {
            Session["email"] = txtemail.Text;
            if (ds.Tables[0].Rows[0]["usertype"].ToString() == "Admin")
            {
                Response.Redirect("Approved.aspx");
            }
            else if (ds.Tables[0].Rows[0]["usertype"].ToString() == "Staff")
            {
                Response.Redirect("Provident.aspx");
            }
            else if (ds.Tables[0].Rows[0]["usertype"].ToString() == "Account Holder")
            {
                Response.Redirect("ApplicantNew.aspx");
            }
           
        }
        else
        {
            Response.Write("<script language=javascript> alert('Invalid Password') </script>");

        }


    }
    
}