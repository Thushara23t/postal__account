using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Provident : System.Web.UI.Page
{
    public static string id =null;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldeposit.Text = Session["email"].ToString();
        if (!IsPostBack)
        {

            DateTime dt = DateTime.Now;
            txtdate.Text = dt.ToString("yyyy-MM-dd");
            
        }

    }
    public void fillgrid()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select * from applicant where account_id='"+txtno.Text+"'";
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
       
        
                String str = "insert into provident( account_no, date, salary, amount, deposited_by)values ('" + txtno.Text + "','" + txtdate.Text + "','" + txtsalary.Text + "','" + txtamt.Text + "','" + lbldeposit.Text + "')";
                DataLayer dl = new DataLayer();
                dl.DmlCmd(str);
                fillgrid();
                Response.Write("<script language=javascript> alert('Record Inserted Successfully!!! THANK YOU!!. ') </script>");
            }


    public void clear()
    {
        txtno.Text = "";
        txtdate.Text = "";
        txtamt.Text = "";
        lbldeposit.Text = "";
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        if (txtno.Text == "")
        {
            Response.Write("<script language='javascript'>alert('Please Enter Account Number')</script>");
        }
        else
        {
                fillgrid();
            }
        
    }
    protected void txtsalary_TextChanged(object sender, EventArgs e)
    {
        if (txtsalary.Text.Length > 0)
        {
            int calc = (int.Parse(txtsalary.Text) * 12 )/ 100;
            txtamt.Text = calc.ToString();
        }
    }
}