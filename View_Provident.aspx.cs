using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_Provident : System.Web.UI.Page
{
    public static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
            DataLayer d2 = new DataLayer();
            DataSet ds1 = new DataSet();
            String str1 = "select sum(amount)as amt from provident where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
            ds1 = d2.GetDataSet(str1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                lblamt.Text = ds1.Tables[0].Rows[0]["amt"].ToString();
            }
        }
    }
    public void fillgrid()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from provident where account_no IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }

  
}