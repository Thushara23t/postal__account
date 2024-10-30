using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;

public partial class ViewFixed_report : System.Web.UI.Page
{
    public static string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnview_Click(object sender, EventArgs e)
    {

       
            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = "select * from fixed where account_no='" + txtno.Text + "'";
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();
        }
    
    }
