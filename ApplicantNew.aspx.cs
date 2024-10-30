using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ApplicantNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            filldropdown();
            filldropdown2();

            txtemail.Text = Session["email"].ToString();

             DataLayer dl = new DataLayer();
            DataSet ds = new DataSet();
            String str = "select * from registration where email='" + txtemail.Text + "'";
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtfname.Text = ds.Tables[0].Rows[0]["name"].ToString();
                txtphone.Text = ds.Tables[0].Rows[0]["phoneno"].ToString();
            }

        }
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
    protected void btnreg_Click(object sender, EventArgs e)
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
                

                String str1 = "insert into applicant(branch_id,city_id,firstname,middlename,lastname,gender,doorno,street,state,pincode,phoneno,email,status,photo) values ('" + drpid.Text + "','" + drpcity.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + gender + "','" + txtdoor.Text + "','" + txtstreet.Text + "','" + txtstate.Text + "','" + txtpin.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','Online','" + FileUpload1.FileName + "')";
                DataLayer d2 = new DataLayer();
                dl.DmlCmd(str1);
                Response.Write("<script language=javascript> alert('You have Registered to Postal Account Successfully!!,THANK YOU!!') </script>");
            }
            }
        }
    }
}