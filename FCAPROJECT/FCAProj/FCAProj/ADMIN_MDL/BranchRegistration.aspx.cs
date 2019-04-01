using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;
using System.Data;

namespace FCAProj.ADMIN_MDL
{
    public partial class BranchRegistration : System.Web.UI.Page
    {
        BranchRegistrationClass obj = new BranchRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            obj.Bname = txtbname.Text;
            obj.Baddress = txtb_address.Text;
            obj.Bdistrict = ddb_district.Text;
            obj.Bcity = ddb_city.Text;
            obj.Bzipcode = txtb_zipcode.Text;
            obj.Bphone = txtb_phone.Text;
            obj.Bdate1 = txtb_date.Text;
            obj.Bemail = txtb_email.Text;
            obj.branchregistration();
            txtbname.Text = "";
            txtb_address.Text = "";
            ddb_district.Text = "";
           //  ddb_city.Text = "";
            txtb_zipcode.Text = "";
            txtb_phone.Text = "";
            txtb_email.Text = "";


        }

        protected void ddb_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.City = ddb_district.SelectedValue.ToString();
            DataTable dispcity = new DataTable();

            dispcity = obj.ExecuteSelectQueries();
            if (dispcity.Rows.Count > 0)
            {



                ddb_city.DataSource = dispcity;
                ddb_city.DataTextField = "Cityname";
                ddb_city.DataValueField = "City_id";
                ddb_city.DataBind();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}