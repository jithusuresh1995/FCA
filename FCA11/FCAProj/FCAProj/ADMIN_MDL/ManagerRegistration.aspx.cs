using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
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
            imgPhoto.Visible = false;
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
                if (!string.IsNullOrEmpty(Convert.ToString(Session["mid"])))
                {
                    LoadManagerDetails();
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

            

           

            if (!string.IsNullOrEmpty(Convert.ToString(Session["mid"])))
            {
                obj.Mid = Convert.ToInt32(Session["mid"]);
                obj.Mphoto = imgPhoto.ImageUrl;
                obj.UpdateManagerDetails();
            }
            else
            {
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
                // obj.Read_Id();



                obj.Memail = txtm_email.Text;
                string uname = "";
                string pwd = "";
                DataTable dt = new DataTable();
                dt = obj.GetUnamePwd();
                if (dt.Rows.Count > 0)
                {
                    uname = dt.Rows[0]["M_username"].ToString();
                    pwd = dt.Rows[0]["M_password"].ToString();
                }


                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                    {
                        //DetailsView1.RenderControl(hw);
                        StringReader sr = new StringReader(sw.ToString());
                        MailMessage msg1 = new MailMessage();
                        msg1.From = new MailAddress("jithu384710@gmail.com");
                        msg1.To.Add(txtm_email.Text);
                        msg1.Subject = "FCA Username and PAssword";
                        msg1.Body = "Username : " + uname + "'\n'" + "Password : " + pwd;
                        msg1.IsBodyHtml = true;

                        SmtpClient smt = new SmtpClient();
                        smt.Host = "smtp.gmail.com";
                        System.Net.NetworkCredential ntwd = new NetworkCredential();
                        ntwd.UserName = "jithu384710@gmail.com";//Your Email ID  
                        ntwd.Password = "jithu1995"; //   
                        smt.UseDefaultCredentials = true;
                        smt.Credentials = ntwd;
                        smt.Port = 587;
                        smt.EnableSsl = true;
                        smt.Send(msg1);
                        // lblMessage.Text = "Email Sent Successfully";  
                        // lblMessage.ForeColor = System.Drawing.Color.ForestGreen;  
                        Response.Write("<script>alert('mail send successfully')</script>");
                    }
                }



            }




            /*f (filem_photo.HasFile)
             {
                 filem_photo.SaveAs(Server.MapPath("~/PHOTOS/" + filem_photo.FileName));
                 obj.Mphoto = filem_photo.FileName + "";
             }*/
            ddm_idproof.ClearSelection();
            dd_branchname.ClearSelection();
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

        private void LoadManagerDetails()
        {
            imgPhoto.Visible = true;
            ManagerRegistrationClass objMgr = new ManagerRegistrationClass();
            objMgr.Mid =Convert.ToInt32(Session["mid"]);
            DataTable dispMgr = new DataTable();
            dispMgr = objMgr.LoadManagerDetails();
            if(dispMgr.Rows.Count>0)
            {
                dd_branchname.SelectedValue= Convert.ToString(dispMgr.Rows[0]["Branch_id"]);
                txtm_name.Text =Convert.ToString(dispMgr.Rows[0]["M_name"]);
                txtm_address.Text= Convert.ToString(dispMgr.Rows[0]["M_address"]);
                
                txtm_dob.Text= Convert.ToString(dispMgr.Rows[0]["M_dob"]);
                txtm_phone.Text= Convert.ToString(dispMgr.Rows[0]["M_phone"]);
                txtm_email.Text= Convert.ToString(dispMgr.Rows[0]["M_email"]);
                ddm_idproof.Text= Convert.ToString(dispMgr.Rows[0]["M_idproof"]);
                txtm_proofno.Text= Convert.ToString(dispMgr.Rows[0]["M_proofno"]);
                txtm_qualification.Text= Convert.ToString(dispMgr.Rows[0]["M_qualification"]);
                txtm_experience.Text= Convert.ToString(dispMgr.Rows[0]["M_experience"]);
                imgPhoto.ImageUrl = Convert.ToString(dispMgr.Rows[0]["M_photo"]);
                if (Convert.ToString(dispMgr.Rows[0]["M_gender"]) == "Male")
                {
                    rbm_male.Checked = true;
                    rbm_female.Checked = false;
                }
                else
                {
                    rbm_male.Checked = false;
                    rbm_female.Checked = true;

                }


            }

        }

        protected void rbm_female_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}