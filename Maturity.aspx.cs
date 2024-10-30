using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Maturity : System.Web.UI.Page
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
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }
    public void fillgrid2()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str1 = "select p.account_no, p.policy_no, p.deposit, p.interest, i.amount, i.transaction_month from policy_insurance p, insurance_transaction i where i.policy_no=p.policy_no and p.policy_no='" + txtpolicy.Text  + "'";
        ds = dl.GetDataSet(str1);
        GridView3.DataSource = ds;
        GridView3.DataMember = "table";
        GridView3.DataBind();
    }
   
    protected void btnsearch_Click(object sender, EventArgs e)
    {

        if (txtno.Text =="")
        {
            Response.Write("<script language='javascript'>alert('Please Enter Account Number')</script>");
        }
        else
        
        {
            fillgrid();
        }
    }


    protected void btnfind_Click(object sender, EventArgs e)
    {
        if (txtno.Text == "")
        {
            Response.Write("<script language='javascript'>alert('Please Enter Account Number')</script>");
        }
        else
        {

            fillgrid2();
        }
        
    }
    
}