using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Applicant : System.Web.UI.Page
{
    public static string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
            filldropdown();
            filldropdown2();

        }
    }
    public void fillgrid()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String  str = "select a.applicant_id,a.account_id,a.firstname,a.middlename,a.lastname,a.gender,a.doorno,a.street,a.state,a.pincode,a.phoneno,a.email,a.status,a.deposit,a.photo,b.branch_name,c.cityname from applicant a,branch b,city c where a.branch_id=b.branch_id and a.city_id=c.city_id";
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
        drpid.DataSource = ds;
        drpid.DataTextField = "branch_name";
        drpid.DataValueField = "branch_id";
        drpid.DataBind();
        drpid.Items.Insert(0, "-- Select Any --");
    }
    public void filldropdown2()
    {
        DataLayer dl = new DataLayer();
        DataSet ds = new DataSet();
        String str = "select city_id, cityname from city";
        ds = dl.GetDataSet(str);
        drpcity.DataSource = ds;
        drpcity.DataTextField = "cityname";
        drpcity.DataValueField = "city_id";
        drpcity.DataBind();
        drpcity.Items.Insert(0, "-- Select Any --");
    }
    protected void btnsave_Click1(object sender, EventArgs e)
    {
        if (txtphone.Text.Length != 10)
        {
            Response.Write("<script language='javascript'>alert(' Phone Number should be 10 digits')</script>");
        }
        else
        {
            DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = "select * from applicant where phoneno='" + txtphone.Text + "'";
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert(' Phone Number already exits')</script>");
            }
        
            else
            {
                DataLayer d2 = new DataLayer();
                DataSet ds1 = new DataSet();
                String str1 = "select * from applicant where account_id='" + txtno.Text + "'";
                ds1 = d2.GetDataSet(str1);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script language='javascript'>alert(' Account Number already exits')</script>");
                }
                else
                {
                    DataLayer d3 = new DataLayer();
                    DataSet ds3 = new DataSet();
                    String str4 = "select * from applicant where email='" + txtemail.Text + "'";
                    ds3 = dl.GetDataSet(str4);
                    if (ds3.Tables[0].Rows.Count > 0)
                    {
                        Response.Write("<script language='javascript'>alert('This Email already exits')</script>");
                    }
                    else
                    {
                        String gender = null;
                        if (rbmale.Checked == true)
                        {
                            gender = "male";
                        }
                        else
                        {
                            gender = "female";
                        }

                        String str2 = "insert into applicant(account_id,branch_id,city_id,firstname,middlename,lastname,gender,doorno,street,state,pincode,phoneno,email,status,deposit,photo) values ('" + txtno.Text + "','" + drpid.Text + "','" + drpcity.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + gender + "','" + txtdoor.Text + "','" + txtstreet.Text + "','" + txtstate.Text + "','" + txtpin.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','Manual','" + txtdeposit.Text + "','" + FileUpload1.FileName + "' )";
                        DataLayer d4 = new DataLayer();
                        d2.DmlCmd(str2);
                        Response.Write("<script language=javascript> alert('You have Registered to Postal Account Successfully!!,THANK YOU!!') </script>");
                    }
                }
            }
        }
    }

    public void clear()
    {
        txtno.Text = "";
        drpid.SelectedIndex = 0;
        drpcity.SelectedIndex = 0;
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        rbmale.Checked = false;
        rbfemale.Checked = false;
        txtdoor.Text = "";
        txtstreet.Text = "";
        txtstate.Text = "";
        txtpin.Text = "";
        txtphone.Text = "";
        txtemail.Text = "";


        txtdeposit.Text = "";
    }

    protected void btnclear_Click1(object sender, EventArgs e)
    {
        clear();
    }
    
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (txtno.Text =="")
        {
            Response.Write("<script language='javascript'>alert('Please choose record')</script>");
        }
        else
        {
            
            String gender = null;
            if (rbmale.Checked == true)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }
           
            DataLayer dl = new DataLayer();
            String str = "update applicant set account_id='" + txtno.Text + "', branch_id='" + drpid.Text + "',city_id='" + drpcity.Text + "', firstname='" + txtfname.Text + "', middlename='" + txtmname.Text + "', lastname='" + txtlname.Text + "', gender='" + gender + "', doorno='" + txtdoor.Text + "', street='" + txtstreet.Text + "', state='" + txtstate.Text + "', pincode='" + txtpin.Text + "', phoneno='" + txtphone.Text + "', email='" + txtemail.Text + "' ,deposit='" + txtdeposit.Text + "' where applicant_id='" + id + "'";
            dl.DmlCmd(str);
            fillgrid();
            Response.Write("<script language='javascript'>alert('Updated successfully')</script>");
        }

    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (txtno.Text=="")
        {
            Response.Write("<script language='javascript'>alert('Please choose record')</script>");
        }
        else

        {
           
            DataLayer dl = new DataLayer();
            String str = "delete  from applicant where applicant_id='" + id + "'";
            //fillgrid();
            // dl.DmlCmd(str);
            //String str = "delete from company_master where companyid='" + id + "'";
            dl.DmlCmd(str);
            fillgrid();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String gender = null;
        if (rbmale.Checked == true)
        {
            gender = "male";
        }
        else
        {
            gender = "female";
        }
        
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtno.Text = GridView1.Rows[rowIndex].Cells[1].Text;
      // drpid.Text = GridView1.Rows[rowIndex].Cells[2].Text;
      // drpcity.Text = GridView1.Rows[rowIndex].Cells[2].Text;
        txtfname.Text = GridView1.Rows[rowIndex].Cells[4].Text;
        txtmname.Text = GridView1.Rows[rowIndex].Cells[5].Text;
        txtlname.Text = GridView1.Rows[rowIndex].Cells[6].Text;
        gender= GridView1.Rows[rowIndex].Cells[7].Text;
        txtdoor.Text = GridView1.Rows[rowIndex].Cells[8].Text;
        txtstreet.Text = GridView1.Rows[rowIndex].Cells[9].Text;
        txtstate.Text = GridView1.Rows[rowIndex].Cells[10].Text;
        txtpin.Text = GridView1.Rows[rowIndex].Cells[11].Text;
        txtphone.Text = GridView1.Rows[rowIndex].Cells[12].Text;
        txtemail.Text = GridView1.Rows[rowIndex].Cells[13].Text;
        //single = GridView1.Rows[rowIndex].Cells[14].Text;
        //txtstatus.Text = GridView1.Rows[rowIndex].Cells[15].Text;
        txtdeposit.Text = GridView1.Rows[rowIndex].Cells[15].Text;
    }


   
}
