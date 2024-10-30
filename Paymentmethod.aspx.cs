using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Paymentmethod : System.Web.UI.Page
{
    public static string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
       
            Response.Write("<script language=javascript> alert('Your Insurance Payment is paid successfully'); window.location='View_Transaction.aspx' </script>");
        }
    
}