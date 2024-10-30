using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Registration01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtnum.Text.Length != 10)
        {
            Response.Write("<script language='javascript'>alert(' Phone Number should be 10 digits')</script>");
        }
        else
        {
            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = "select * from registration where phoneno='" + txtnum.Text + "'";
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert(' Phone Number already exits')</script>");
            }

            else
            {
                DataLayer d3 = new DataLayer();
                DataSet ds3 = new DataSet();
                String str4 = "select * from registration where email='" + txtemail.Text + "'";
                ds3 = dl.GetDataSet(str4);
                if (ds3.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script language='javascript'>alert('This Email already exits')</script>");
                }
                else
                {

                    String str1 = "insert into registration( name, email, phoneno, password,usertype) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtnum.Text + "','" + txtpass.Text + "','" + ddlusertype.SelectedItem.Text + "')";
                    DataLayer d2 = new DataLayer();
                    dl.DmlCmd(str1);
                    Response.Write("<script language=javascript> alert('You have Registered to Postal Account Successfully!!,THANK YOU!!') </script>");


                }
            }

        }
    }
}