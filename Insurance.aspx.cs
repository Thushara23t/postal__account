using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Insurance : System.Web.UI.Page
{
    public static string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            filldropdown();
            DateTime dt = DateTime.Now ;
            txtreceipt.Text = dt.ToString("yyyy-MM-dd");


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
    public void filldropdown()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select branch_id ,branch_name from branch";
        ds = dl.GetDataSet(str);
        drpbranch.DataSource = ds;
        drpbranch.DataTextField = "branch_name";
        drpbranch.DataValueField = "branch_id";
        drpbranch.DataBind();
        drpbranch.Items.Insert(0, "-- Select Any --");
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        String str = "insert into policy_insurance( account_no, branch_id, policy_no, date_of_receipt, maturity,deposit, interest)values ('" + txtno.Text + "','" + drpbranch.Text + "','" + txtpolicy.Text + "','" + txtreceipt.Text + "','"+ddlmaturity.SelectedItem.Text + "','" + txtamt.Text + "','" + txtinterest.Text + "')";
        DataLayer dl = new DataLayer();
        dl.DmlCmd(str);
        Response.Write("<script language=javascript> alert('Record Inserted Successfully!!! THANK YOU!!. ') </script>");
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtno.Text = "";
        txtreceipt.Text = "";
        txtamt.Text = "";
        drpbranch.SelectedIndex = 0;
        txtpolicy.Text = "";
        txtinterest.Text = "";
        ddlmaturity.SelectedIndex = 0;
    }
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String gender = null;
        String txtfname = null;
        String txtstate = null;
        String txtemail = null;
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView2.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtfname = GridView2.Rows[rowIndex].Cells[1].Text;
        gender = GridView2.Rows[rowIndex].Cells[2].Text;
        txtstate = GridView2.Rows[rowIndex].Cells[2].Text;
        txtemail = GridView2.Rows[rowIndex].Cells[2].Text;
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
        }
    }
}