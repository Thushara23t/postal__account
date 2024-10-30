using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Document : System.Web.UI.Page
{
    public static string id = "";
    public static string accountno = "";
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
        String str = "select * from applicant where account_id IN(select account_id from applicant where email='" + Session["email"].ToString() + "')";
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            accountno = ds.Tables[0].Rows[0]["account_id"].ToString();
            txtno.Text=accountno.ToString();
        }
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String gender = null;
        String txtfname = null;
        String txtstate = null;
        String txtemail = null;
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView2.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtfname = GridView2.Rows[rowIndex].Cells[1].Text;
        gender = GridView2.Rows[rowIndex].Cells[2].Text;
        txtstate = GridView2.Rows[rowIndex].Cells[2].Text;
        txtemail = GridView2.Rows[rowIndex].Cells[2].Text;
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("document1//" + FileUpload1.FileName));
        }

        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(Server.MapPath("document2//" + FileUpload2.FileName));
        }
        if (FileUpload3.HasFile)
        {
            FileUpload3.SaveAs(Server.MapPath("document3//" + FileUpload3.FileName));
        }


        String str = "insert into document( account_id, adharcard, photo, pancard,status)values('" + accountno  + "','" + FileUpload1.FileName + "','" + FileUpload2.FileName + "','" + FileUpload3.FileName + "','pending')";
        //lblmsg.Text = "One row inserted";
        DataLayer dl = new DataLayer();
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Document Uploaded')</script>");
        
    }
    public void clear()
    {
        txtno.Text="";
    }




    protected void clear_Click(object sender, EventArgs e)
    {
        clear();
      
    }
    
}