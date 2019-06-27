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
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Session["bid"])))
                {
                    LoadBranchDetails();
                }
            }
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

            if (!string.IsNullOrEmpty(Convert.ToString(Session["bid"])))
            {
               
                obj.Bid = Convert.ToInt32(Session["bid"]);
                obj.UpdateBranchDetails();
            }
            else
            {
                obj.branchregistration();
            }

                
            txtbname.Text = "";
            txtb_address.Text = "";
            ddb_district.ClearSelection();
            ddb_city.ClearSelection();
            txtb_zipcode.Text = "";
            txtb_phone.Text = "";
            txtb_email.Text = "";
            txtb_date.Text = "";


        }

        protected void ddb_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindCity();           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        public void BindCity()
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

        public void LoadBranchDetails()
        {
            BranchRegistrationClass objBr = new BranchRegistrationClass();
            objBr.Bid = Convert.ToInt32(Session["bid"]);
            DataTable dispBr = new DataTable();
            dispBr = objBr.LoadBranchDetails();
            if (dispBr.Rows.Count > 0)
            {

                txtbname.Text = Convert.ToString(dispBr.Rows[0]["Branch_name"]);
                txtb_address.Text= Convert.ToString(dispBr.Rows[0]["Branch_address"]);
                ddb_district.SelectedValue = Convert.ToString(dispBr.Rows[0]["Branch_district"]);
                BindCity();
                ddb_city.SelectedValue = Convert.ToString(dispBr.Rows[0]["Branch_city"]);
                txtb_zipcode.Text= Convert.ToString(dispBr.Rows[0]["Branch_Zipcode"]);
                txtb_date.Text= Convert.ToString(dispBr.Rows[0]["Branch_date"]);
                txtb_phone.Text= Convert.ToString(dispBr.Rows[0]["Branch_phone"]);
                txtb_email.Text= Convert.ToString(dispBr.Rows[0]["Branch_email"]);


            }
        }
    }
}