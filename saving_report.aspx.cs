using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class saving_report : System.Web.UI.Page
{
    public static string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
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
    public void fillgrid1()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from new_saving where account_no='" + txtno.Text + "'";
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();
            int amount = 0;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                amount = amount + int.Parse(ds.Tables[0].Rows[i]["amount"].ToString());
            }
            lblamt.Text = amount.ToString();
        }
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        if (txtno.Text == "")
        {
            Response.Write("<script language='javascript'>alert('Please Enter Account Number')</script>");
        }
        else
        {

            fillgrid();
            fillgrid1();
        }
    }
}