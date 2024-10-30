using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _PostalInsurance : System.Web.UI.Page
{
    public static string id = "";
    public static string accountno = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime dt = DateTime.Now;
            lbldate.Text = dt.ToString("yyyy-MM-dd");

            

            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = "select * from policy_insurance where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblbranch.Text = ds.Tables[0].Rows[0]["branch_id"].ToString();
                str = "select branch_name from branch where branch_id ='" + lblbranch.Text  + "'";
                  DataSet ds1 = dl.GetDataSet(str);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                lblbranch.Text = ds1.Tables[0].Rows[0]["branch_name"].ToString();
            }


                lblpolicy.Text = ds.Tables[0].Rows[0]["policy_no"].ToString();
                lbldeposit.Text = ds.Tables[0].Rows[0]["deposit"].ToString();
                lblDepositeddate.Text = ds.Tables[0].Rows[0]["date_of_receipt"].ToString();
                lblMaturity.Text = ds.Tables[0].Rows[0]["maturity"].ToString();

                txtpremium.Text = ds.Tables[0].Rows[0]["deposit"].ToString();
                accountno = ds.Tables[0].Rows[0]["account_no"].ToString();
            }

        }
       
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
       
        

    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payementmethod.aspx");

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        String str = "insert into insurance_transaction( account_no, policy_no, amount,date, transaction_month)values ('" + accountno  + "','" + lblpolicy.Text + "','" + txtpremium.Text + "','" +lbldate.Text + "','" + ddlmonth.SelectedItem.Text + "')";
        DataLayer dl = new DataLayer();
        dl.DmlCmd(str);

        Response.Write("<script language=javascript> alert('Record Inserted Successfully!!! THANK YOU!!. ') </script>");
    }
}