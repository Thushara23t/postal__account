using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Saving : System.Web.UI.Page
{
    public static string id = "";
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
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        String str = "insert into saving( account_no, date, amount, cheque_no)values ('" + txtno.Text + "','" + txtdate.Text + "','" + txtamt.Text + "','" + txtcheque.Text + "')";
        DataLayer dl = new DataLayer();
        dl.DmlCmd(str);
        Response.Write("<script language=javascript> alert('Record Inserted Successfully!!! THANK YOU!!. ') </script>");
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtno.Text = "";
        txtdate.Text = "";
        txtamt.Text = "";
        txtcheque.Text = "";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String gender = null;
        String txtfname = null;
        String txtstate = null;
        String txtemail = null;
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtfname = GridView1.Rows[rowIndex].Cells[1].Text;
        gender = GridView1.Rows[rowIndex].Cells[2].Text;
        txtstate = GridView1.Rows[rowIndex].Cells[2].Text;
        txtemail = GridView1.Rows[rowIndex].Cells[2].Text;
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        fillgrid();
    }
}