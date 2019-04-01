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
    public partial class EmployeeRegistration : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dispbname = new DataTable();

                dispbname = obj.ExecuteSelectQueries();
                if (dispbname.Rows.Count > 0)
                {

                    ddE_branchname.DataSource = dispbname;
                    ddE_branchname.DataTextField = "Branch_name";
                    ddE_branchname.DataValueField = "Branch_id";
                    ddE_branchname.DataBind();
                }
            }

        }

        protected void rb_male_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Esave_Click(object sender, EventArgs e)
        {
            if (rb_Emale.Checked)
            {
                obj.Egender = rb_Emale.Text.ToString();
            }
            else if (rb_Efemale.Checked)
            {
                obj.Egender = rb_Efemale.Text.ToString();
            }

            obj.Ename = txte_name.Text;
            obj.Eaddress = txte_address.Text;
            obj.Edob = txte_dob.Text;
            obj.Ephone = txte_phone.Text;
            obj.Eemail = txte_email.Text;
            obj.Emaritalstatus = dd_emstatus.Text;
            obj.Edesignation = dde_designation.Text;
            obj.Ephoto = filee_photo.FileName;
            obj.Ejoindate = txte_joindate.Text;
            obj.Branchid = Convert.ToInt32(ddE_branchname.SelectedValue);
            obj.InsertEmployee_Parameter();

            if (filee_photo.HasFile)
            {
                filee_photo.SaveAs(Server.MapPath("~/PHOTOS/" + filee_photo.FileName));
                obj.Ephoto = filee_photo.FileName + "";
            }

            txte_name.Text = "";
            txte_address.Text = "";
            rb_Efemale.Text = "";
            rb_Emale.Text = "";
            txte_phone.Text = "";
            txte_email.Text = "";
            txte_dob.Text = "";
            txte_joindate.Text = "";
            dde_designation.Text = "";
     
        }
    }
}