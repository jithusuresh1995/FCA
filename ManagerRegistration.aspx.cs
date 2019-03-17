using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.ADMIN_MDL
{
    public partial class ManagerRegistration : System.Web.UI.Page
    {
        ManagerRegistrationClass obj = new ManagerRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dispbname = new DataTable();

            dispbname = obj.ExecuteSelectQueries();
            if (dispbname.Rows.Count > 0)
            {



                dd_branchname.DataSource = dispbname;
                dd_branchname.DataTextField = "Branch_name";
                //ddb_city.DataValueField = "City_id";
                dd_branchname.DataBind();
            }

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {

            if(rbm_male.Checked)
            {
                obj.Mgender = rbm_male.Text.ToString();
            }
            else if(rbm_female.Checked)
            {
                obj.Mgender = rbm_female.Text.ToString();
            }
            obj.Mname = txtm_name.Text;
            obj.Maddress = txtm_address.Text;

            obj.Mdob = txtm_dob.Text;
            obj.Mphone = txtm_phone.Text;
            obj.Memail = txtm_email.Text;
            obj.Midproof = ddm_idproof.Text;
            obj.Midno = txtm_proofno.Text;
            // obj.Mphoto=filem_photo.
            obj.Mquali = txtm_qualification.Text;
            obj.Mexperience = txtm_experience.Text;
            obj.InsertStudent_Parameter();
        }
    }
}