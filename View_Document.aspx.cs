using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_Document : System.Web.UI.Page
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
        String str = "select * from document where status='pending'";
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
       // txtcname.Text = GridView1.Rows[rowIndex].Cells[1].Text;
        //txtcountry.Text = GridView1.Rows[rowIndex].Cells[2].Text;
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (id == null)
        {
            Response.Write("<script language='javascript'>alert('Please choose record')</script>");
        }
        else
        {

            String str = "update document set status='verified' where document_id='" + id + "'";
            DataLayer dl = new DataLayer();
            dl.DmlCmd(str);
            fillgrid();






            Response.Write("<script language='javascript'>alert('Your Id has verified!!!!, THANK YOU !!')</script>");
        }
   
    }


    protected void DownloadFile1(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Server.MapPath("document1//"+filePath));
        Response.WriteFile(Server.MapPath("document1//" + filePath));
        Response.End();
    }


    protected void DownloadFile2(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Server.MapPath("document2//" + filePath));
        Response.WriteFile(Server.MapPath("document2//" + filePath));
        Response.End();
    }


    protected void DownloadFile3(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Server.MapPath("document3//" + filePath));
        Response.WriteFile(Server.MapPath("document3//" + filePath));
        Response.End();
    }




}