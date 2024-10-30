using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;

public partial class View_Insurance : System.Web.UI.Page
{
    public static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = "select * from insurance_transaction where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();


          
                DataLayer d2 = new DataLayer();
                DataSet ds1 = new DataSet();


                String str1 = "select * from policy_insurance where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
                ds1 = d2.GetDataSet(str1);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    lblmaturity.Text = ds1.Tables[0].Rows[0]["maturity"].ToString();
                }
            }
            DataLayer d3 = new DataLayer();
            DataSet ds2 = new DataSet();
            String str2 = "select sum(amount)as amt from insurance_transaction where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
            ds2 = d3.GetDataSet(str2);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                lblamount.Text = ds2.Tables[0].Rows[0]["amt"].ToString();
            }
        
    }
    public void fillgrid()
    {
        
    }
   
}
