using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Approved : System.Web.UI.Page
{
    public static string id = null;
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
        String str = "select * from applicant";
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }

    protected void btnapprove_Click(object sender, EventArgs e)
    {
        if (id == null)
        {
            Response.Write("<script language='javascript'>alert('Please choose record')</script>");
        }
        else
        {

            String str = "update applicant set status='approved' where applicant_id='" + id + "'";
            DataLayer dl = new DataLayer();
            dl.DmlCmd(str);
            fillgrid();
            Response.Write("<script language='javascript'>alert('Your ID has approved!!!!, THANK YOU !!')</script>");
        }
   
    }
    protected void btnreject_Click(object sender, EventArgs e)
    {
        if (id == null)
        {
            Response.Write("<script language='javascript'>alert('Please choose record')</script>");
        }
        else
        {
            String str = "update applicant set status='rejected' where applicant_id='" + id + "'";
            DataLayer dl = new DataLayer();
            dl.DmlCmd(str);
            fillgrid();
            Response.Write("<script language=javascript>alert('Your ID has rejected!!, THANK YOU !!')</script>");
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String txtid = null;
        String txtfname = null;
        String txtstate = null;
        String txtphone = null;
        String txtmail = null;
        String txtstatus = null;
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtid = GridView1.Rows[rowIndex].Cells[1].Text;
        txtfname = GridView1.Rows[rowIndex].Cells[1].Text;
        txtstate = GridView1.Rows[rowIndex].Cells[1].Text;
        txtphone = GridView1.Rows[rowIndex].Cells[1].Text;
        txtmail = GridView1.Rows[rowIndex].Cells[1].Text;
        txtstatus = GridView1.Rows[rowIndex].Cells[1].Text;
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
       
            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = null;
            if (rball.Checked == true)
            {
                str = "select * from applicant";
            }
            else if (rbapproved.Checked == true)
            {
                str = "select * from applicant where status='approved'";

            }
            else if (rbrejected.Checked == true)
            {
                str = "select * from applicant where status='rejected'";
            }
            else if (rbmanul.Checked == true)
            {
                str = "select * from applicant where status='Manual'";
            }
            else if (rbonline.Checked == true)
            {
                str = "select * from applicant where status='Online'";
            }
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();
        
    }
}