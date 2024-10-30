using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Branch : System.Web.UI.Page
{
    public static string id =null;
     protected void Page_Load(object sender, EventArgs e)
    {
         if(!IsPostBack)
         {
             fillgrid();
         }
    }
   
    public void fillgrid()
{
    DataLayer dl=new DataLayer();
    DataSet ds= new DataSet();
    String str="select * from branch";
    ds=dl.GetDataSet(str);
    GridView1.DataSource=ds;
    GridView1.DataMember="table";
    GridView1.DataBind();
}
protected void  btnclear_Click(object sender, EventArgs e)
{
   clear();
}
protected void btnsave_Click(object sender, EventArgs e)
{
    DataLayer dl = new DataLayer();
    DataLayer d3 = new DataLayer();
    DataSet ds3 = new DataSet();
    String str4 = "select * from branch where branch_name='" + txtbranch.Text + "'";
    ds3 = dl.GetDataSet(str4);
    if (ds3.Tables[0].Rows.Count > 0)
    {
        Response.Write("<script language='javascript'>alert('This Branch already exits')</script>");
    }
    else
    {
        String str = "insert into branch(branch_name) values ('" + txtbranch.Text + "')";
        DataLayer d2 = new DataLayer();
        d2.DmlCmd(str);
        fillgrid();
        Response.Write("<script language='javascript'> alert('You have selected your Branch Name!!! THANK YOU!!. ') </script>");
    }
}
public void clear()
{
    txtbranch.Text = "";
}


protected void btnupdate_Click(object sender, EventArgs e)
{

    if (id == null)
    {
        Response.Write("<script language='javascript'>alert('Please choose record')</script>");
    }
    else
    {
        DataLayer dl = new DataLayer();
        DataLayer d3 = new DataLayer();
        DataSet ds4 = new DataSet();
        String str4 = "select * from branch where branch_name='" + txtbranch.Text + "'";
        ds4 = dl.GetDataSet(str4);
        if (ds4.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script language='javascript'>alert('This Branch already exits')</script>");
        }
        else
        {
            DataLayer d2 = new DataLayer();
            String str = "update branch set branch_name='" + txtbranch.Text + "'where branch_id='" + id + "'";
            //dl.DmlCmd(str);
            //fillgrid();

            //string str = "update company_master set company_name='" + txtcname.Text + "', country='" + txtcountry.Text + "' where companyid='" + id + "'";
            d2.DmlCmd(str);
            fillgrid();
            Response.Write("<script language='javascript'>alert('Updated Successfully')</script>");
        }
    }
}

protected void btndelete_Click(object sender, EventArgs e)
{

    if (id == null)
    {
        Response.Write("<script language='javascript'>alert('Please choose record')</script>");
    }
    else
    {
        DataLayer dl = new DataLayer();
        String str = "delete from branch where branch_id='" + id + "'";
        //dl.DmlCmd(str);
        //fillgrid();

        //String str = "delete from company_master where companyid='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();

    }
}

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtbranch.Text = GridView1.Rows[rowIndex].Cells[1].Text;
    }

    }