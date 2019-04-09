using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.CUSTOMER
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        CustomerRegistrationClass obj = new CustomerRegistrationClass();
        //BranchRegistrationClass obj1 = new BranchRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dispbname = new DataTable();

                dispbname = obj.ExecuteSelectQueries();
                if (dispbname.Rows.Count > 0)
                {

                    dd_bname.DataSource = dispbname;
                //    dd_bname.DataTextField = "Branch_name";
                 //   dd_bname.DataValueField = "Branch_id";
                    dd_bname.DataBind();
                }
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {

            if (rb_male.Checked)
            {
                obj.Cgender = rb_male.Text.ToString();
            }
            else if (rb_female.Checked)
            {
                obj.Cgender = rb_female.Text.ToString();
            }
            obj.Cname = txt_name.Text;
            obj.Caddress = txt_address.Text;
            obj.C_dob = txt_dob.Text;
            obj.Cphone = Convert.ToInt32(txt_phone.Text);
            obj.Cemail = txt_email.Text;
            obj.District = dd_district.Text;
            obj.Ccity = dd_city.Text;
            obj.Cidproof = dd_idproof.Text;
            obj.Cproofno = txt_proofno.Text;
            obj.Cphoto = "sample";
            obj.Cusername = txt_username.Text;
            obj.Cpassword = txt_password.Text;
            obj.Branchid =Convert.ToInt32( dd_bname.SelectedValue);
            obj.Insertcustomer();

        }

        protected void dd_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.City = dd_district.SelectedValue.ToString();
            DataTable dispcity = new DataTable();

            dispcity = obj.ExecuteSelectQueries1();
            if (dispcity.Rows.Count > 0)
            { 

                dd_city.DataSource = dispcity;
                dd_city.DataTextField = "Cityname";
                dd_city.DataValueField = "City_id";
                dd_city.DataBind();
            }
        }
    }
}