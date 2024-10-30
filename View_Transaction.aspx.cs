using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_Transaction : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    public void fillgrid()
    {
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
            String str = "select * from new_saving where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();
        }
    }

    protected void rbdeposit_CheckedChanged(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        GridView1.Visible = true;
        String str = "select * from new_saving where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }
    protected void rbwithdrawal_CheckedChanged(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
        String str = "select * from withdrawal where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView2.DataSource = ds;
        GridView2.DataMember = "table";
        GridView2.DataBind();
    }
}