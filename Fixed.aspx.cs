using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Fixed : System.Web.UI.Page
{
    public static string id =null;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            filldropdown();
            lbldeposit.Text = Session["email"].ToString();
            DateTime dt = DateTime.Now;
            txtdate.Text = dt.ToString("yyyy-MM-dd");
        }
        Panel1.Visible = false;
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
    public void filldropdown()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select branch_id ,branch_name from branch";
        ds = dl.GetDataSet(str);
        drpbranch.DataSource = ds;
        drpbranch.DataTextField = "branch_name";
        drpbranch.DataValueField = "branch_id";
        drpbranch.DataBind();
        drpbranch.Items.Insert(0, "-- Select Any --");
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
       
            String mode = null;
            if (rbcash.Checked == true)
            {
                mode = "Cash";
                String str2 = "insert into fixed ( account_no, payment_mode, date, amount, transaction_year, deposited_by) values ('" + txtno.Text + "','" + mode + "','" + txtdate.Text + "','" + txtamt.Text + "','" + drpyear.SelectedItem.Text + "','" + lbldeposit.Text + "')";
                DataLayer d2 = new DataLayer();
                d2.DmlCmd(str2);
            }
            else
                if (rbcheque.Checked == true)
                {
                    mode = "Cheque";
                    String str2 = "insert into fixed ( account_no, payment_mode, cheque_no, bank_name, branch_id, ifsc, date, amount, transaction_year, deposited_by) values ('" + txtno.Text + "','" + mode + "','" + txtcheque.Text + "','" + txtbank.Text + "','" + drpbranch.SelectedItem.Text + "','" + txtcode.Text + "','" + txtdate.Text + "','" + txtamt.Text + "','" + drpyear.SelectedItem.Text + "','" + lbldeposit.Text + "')";
                    DataLayer d2 = new DataLayer();
                    d2.DmlCmd(str2);
                }


            Response.Write("<script language=javascript> alert('Record Inserted Successfully!!! THANK YOU!!. ') </script>");
        }
    

    public void clear()
    {
        txtno.Text = "";
        txtdate.Text = "";
        txtamt.Text = "";
        txtbank.Text = "";
        drpbranch.SelectedIndex = 0;
        txtcode.Text = "";
        txtcheque.Text = "";
        lbldeposit.Text = "";
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String gender = null;
        String txtfname = null;
        String txtstate = null;
        String txtemail = null;
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtfname = GridView1.Rows[rowIndex].Cells[1].Text;
        gender = GridView1.Rows[rowIndex].Cells[2].Text;
        txtstate = GridView1.Rows[rowIndex].Cells[2].Text;
        txtemail = GridView1.Rows[rowIndex].Cells[2].Text;
    }
    protected void btnsearch_Click(object sender, EventArgs e)
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
    protected void rbcash_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void rbcheque_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    public string mode { get; set; }
    protected void txtinterest_TextChanged(object sender, EventArgs e)
    {
        if (txtinterest.Text.Length > 0)
        {
            lblyear.Text = drpyear.SelectedItem.Text;
            long val = long.Parse(txtinterest.Text);
            long amount = long.Parse(txtamt.Text);
            int years = int.Parse(drpyear.SelectedItem.Text);
        
        if(drpyear.SelectedIndex==1)
        {
            years=years*12;
        }
        else if(drpyear.SelectedIndex==3)
        {
            years=years*36;

        }
        else if(drpyear.SelectedIndex==5)
        {
            years=years*65;

        }
        else if(drpyear.SelectedIndex==10)
        {
            years=years*120;

        }
   
        long result=(amount*val)/100;
            result= result*years;
            long total=result+long.Parse(txtamt.Text);
            lbltotal.Text=total.ToString();
            }
    }
}