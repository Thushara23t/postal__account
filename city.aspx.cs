using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _city : System.Web.UI.Page
{
         public static string id =null;
         protected void Page_Load(object sender, EventArgs e)
    {
         if(!IsPostBack)
         {
             fillgrid();
             fillstate();
            
         }
    }
    public void fillgrid()
{
    DataLayer dl=new DataLayer();
    DataSet ds= new DataSet();
    String str = "select c.city_id, c.cityname,s.state_name from city c, state s where c.state_id=s.state_id";
    ds=dl.GetDataSet(str);
    GridView1.DataSource=ds;
    GridView1.DataMember="table";
    GridView1.DataBind();
}
    public void fillstate()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select state_id,state_name from state";
        ds = dl.GetDataSet(str);
        drpstate.DataSource = ds;
        drpstate.DataTextField = "state_name";
        drpstate.DataValueField = "state_id";
        drpstate.DataBind();
        drpstate.Items.Insert(0, "-- Select Any --");
    }

     
  
protected void  btnsave_Click(object sender, EventArgs e)
{
     DataLayer dl = new DataLayer();
    DataLayer d3 = new DataLayer();
    DataSet ds3 = new DataSet();
    String str4 = "select * from city where cityname='" + txtcity.Text + "'";
    ds3 = dl.GetDataSet(str4);
    if (ds3.Tables[0].Rows.Count > 0)
    {
        Response.Write("<script language='javascript'>alert('This City already exits')</script>");
    }
    else
    {

        DataLayer d2 = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from city where cityname='" + txtcity.Text + "'";
        ds = d2.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script language='javascript'>alert(' City already exits')</script>");
        }
        else
        {

            str = "insert into city(state_id,cityname) values ('" + drpstate.Text + "','" + txtcity.Text + "')";
            // DataLayer dl = new DataLayer();
            d2.DmlCmd(str);
            fillgrid();
            Response.Write("<script language=javascript> alert('You have inserted City!!! THANK YOU!!. ') </script>");
        }
    }
}
public void clear()
{
    drpstate.SelectedIndex = 0;
    txtcity.Text = "";
}

protected void btnclear_Click(object sender, EventArgs e)
{
    clear();
}
protected void btnupdate_Click(object sender, EventArgs e)
{

    if (id == null)
    {
        Response.Write("<script language='javascript'>alert('Please choose record')</script>");
    }
    else
    {
        DataLayer d2 = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from city where cityname='" + txtcity.Text + "'";
        ds = d2.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script language='javascript'>alert(' City already exits')</script>");
        }
        else
        {
            DataLayer dl = new DataLayer();
            String str1 = "update city set state_id='" + drpstate.Text + "',cityname='" + txtcity.Text + "'where city_id='" + id + "' ";
            dl.DmlCmd(str1);
            fillgrid();
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
        String str = "delete from city where city_id='" + id + "'";
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
    //drpstate.Text = GridView1.Rows[rowIndex].Cells[1].Text;
    txtcity.Text = GridView1.Rows[rowIndex].Cells[2].Text;
}

}
  
