using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewApplicant : System.Web.UI.Page
{
    public static string id = null;
    public static string accountno =null;
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
        String str = "select * from applicant where status='Online'";
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
        String txtno = null;
        String txtfname=null;
         String txtmname=null;
         String txtlname=null;
         String gender = null;
         String txtdoor=null;
         String txtstreet=null;
         String txtstate=null;
         String txtpin=null;
         String txtphone=null;
         String txtemail=null;
       //  String single = null;
         txtno = GridView1.Rows[rowIndex].Cells[2].Text;
        // drpcity.Text = GridView1.Rows[rowIndex].Cells[2].Text;
        txtfname = GridView1.Rows[rowIndex].Cells[4].Text;
        txtmname = GridView1.Rows[rowIndex].Cells[5].Text;
        txtlname = GridView1.Rows[rowIndex].Cells[6].Text;
        gender = GridView1.Rows[rowIndex].Cells[7].Text;
        txtdoor = GridView1.Rows[rowIndex].Cells[8].Text;
        txtstreet = GridView1.Rows[rowIndex].Cells[9].Text;
        txtstate = GridView1.Rows[rowIndex].Cells[10].Text;
        txtpin = GridView1.Rows[rowIndex].Cells[11].Text;
        txtphone = GridView1.Rows[rowIndex].Cells[12].Text;
        txtemail = GridView1.Rows[rowIndex].Cells[13].Text;
       // single = GridView1.Rows[rowIndex].Cells[14].Text;
       
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
  
        if (accountno== "")
        {
            Response.Write("<script language='javascript'>alert('Please Enter Account Number')</script>");
        }
        else
        {
        
            DataLayer dl = new DataLayer();
           DataSet ds = new DataSet();
            String str = null;
            if (rbphone.Checked == true)
            {
                str = "select * from applicant where phoneno='" + txtsearch.Text + "'";
            }
            else if (rbano.Checked == true)
            {
                str = "select * from applicant where account_id='" + txtsearch.Text + "'";

            }
          ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
           GridView1.DataBind();
           
        }
    }

    }
