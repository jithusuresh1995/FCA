using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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
            if (!IsPostBack)
            {
                DataTable dispbname = new DataTable();

                dispbname = obj.ExecuteSelectQueries();
                if (dispbname.Rows.Count > 0)
                {

                    dd_branchname.DataSource = dispbname;
                    dd_branchname.DataTextField = "Branch_name";
                    dd_branchname.DataValueField = "Branch_id";
                    dd_branchname.DataBind();
                }
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
            //j.Mphoto = filem_photo.FileName;
            obj.Mquali = txtm_qualification.Text;
            obj.Mexperience = txtm_experience.Text;
            obj.Branchid =Convert.ToInt32(dd_branchname.SelectedValue);
            

            String filename = Path.GetFileName(filem_photo.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/PHOTOS") + "\\" + txtm_email.Text + ".JPG";
                    filem_photo.PostedFile.SaveAs(src);
                string picpath = "~/PHOTOS/" + txtm_email.Text + ".JPG";
                obj.Mphoto = picpath;
            }
            obj.InsertManager_Parameter();
            obj.Read_Id();

            /*f (filem_photo.HasFile)
             {
                 filem_photo.SaveAs(Server.MapPath("~/PHOTOS/" + filem_photo.FileName));
                 obj.Mphoto = filem_photo.FileName + "";
             }*/

            txtm_name.Text = "";
            txtm_address.Text = "";
            txtm_dob.Text = "";
            txtm_phone.Text = "";
            txtm_email.Text = "";
            ddm_idproof.Text = "";
            txtm_proofno.Text = "";
            txtm_qualification.Text = "";
            txtm_experience.Text = "";

            
           

        }
    }
}