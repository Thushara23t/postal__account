using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class New_Saving : System.Web.UI.Page
{
    public static string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            filldropdown();
             DateTime dt = DateTime.Now;
            textdate.Text = dt.ToString("yyyy-MM-dd");
        }
        Panel1.Visible = false;
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
                mode = "cash";
            }
            else
                if (rbcheque.Checked == true)
                {
                    mode = "Cheque";
                }


            string str2 = "insert into new_saving( account_no, payment_mode, cheque_no, bank_name, branch_id, ifsc, amount, date)values('" + txtno.Text + "','" + mode + "','" + txtcheque.Text + "','" + txtbank.Text + "','" + drpbranch.SelectedItem.Text + "','" + txtcode.Text + "','" + txtamount.Text + "','" + textdate.Text + "')";
            DataLayer d2 = new DataLayer();
            d2.DmlCmd(str2);
            Response.Write("<script language='javascript'>alert('Saving Process is completed')</script>");

        }
    
    public void clear()
    {
        txtno.Text = "";
        rbcash.Checked = false;
        rbcheque.Checked = false;
        txtcheque.Text = "";
        txtbank.Text = "";
        drpbranch.SelectedIndex = 0;
        txtcode.Text = "";
        txtamount.Text = "";
        textdate.Text = "";
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

            String str = "Select * from applicant where account_id ='" + txtno.Text + "'";
            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();
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

}