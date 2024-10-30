using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _State : System.Web.UI.Page
{
    public static string id =null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }

    }
    public void fillgrid()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from state";
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtstate.Text = GridView1.Rows[rowIndex].Cells[1].Text;
       
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        DataLayer dl = new DataLayer();
        DataLayer d3 = new DataLayer();
        DataSet ds3 = new DataSet();
        String str4 = "select * from state where state_name='" + txtstate.Text + "'";
        ds3 = dl.GetDataSet(str4);
        if (ds3.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script language='javascript'>alert('This State already exits')</script>");
        }
        else
        {

            String str = "insert into state(state_name) values ('" + txtstate.Text + "')";
            DataLayer d2 = new DataLayer();
            d2.DmlCmd(str);
            fillgrid();
            Response.Write("<script language=javascript> alert('Inserted into Successfully!!! THANK YOU!!. ') </script>");
        }
    }
    public void clear()
    {
        txtstate.Text = "";
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
            DataLayer dl = new DataLayer();
            DataLayer d3 = new DataLayer();
            DataSet ds3 = new DataSet();
            String str4 = "select * from state where state_name='" + txtstate.Text + "'";
            ds3 = dl.GetDataSet(str4);
            if (ds3.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert('This State already exits')</script>");
            }
            else
            {
                DataLayer d2 = new DataLayer();
                String str = "update state set state_name='" + txtstate.Text + "' where state_id='" + id + "'";
                d2.DmlCmd(str);
                fillgrid();
                Response.Write("<script language=javascript> alert('State has Updated Successfully!!! THANK YOU!!. ') </script>");
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
            String str = "delete from state where state_id='" + id + "'";
            dl.DmlCmd(str);
            fillgrid();
        }
    }
}