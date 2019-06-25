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

                if (!string.IsNullOrEmpty(Convert.ToString(Session["eid"])))
                {
                  
                    LoadEmployeeDetails();
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
            obj.Edesignation = dde_designation.SelectedValue;
            
            
            obj.Ejoindate = txte_joindate.Text;
            obj.Branchid = Convert.ToInt32(ddE_branchname.SelectedValue);

            if (!string.IsNullOrEmpty(Convert.ToString(Session["eid"])))
            {
                obj.Eid = Convert.ToInt32(Session["eid"]);
                obj.Ephoto = imgPhoto.ImageUrl;
                obj.UpdateEmployeeDetails();
            }
            else
            {
                string picpath = string.Empty;
                obj.Ephoto = string.Empty;
                String filename = Path.GetFileName(filee_photo.PostedFile.FileName);
                string ext = Path.GetExtension(filename);
                if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
                {
                    string src = Server.MapPath("~/PHOTOS") + "\\" + txte_email.Text + ".JPG";
                    filee_photo.PostedFile.SaveAs(src);
                    picpath = "~/PHOTOS/" + txte_email.Text + ".JPG";
                    obj.Ephoto = picpath;
                }
                obj.InsertEmployee_Parameter();

                ////////////////////
                ///
                string uname ="";
                string pwd="";
                DataTable dt = new DataTable();
                dt = obj.GetUnamePwd();
                if (dt.Rows.Count > 0)
                {
                    uname = dt.Rows[0]["E_username"].ToString();
                    pwd = dt.Rows[0]["E_password"].ToString();
                }


                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                    {
                        //DetailsView1.RenderControl(hw);
                        StringReader sr = new StringReader(sw.ToString());
                        MailMessage msg1 = new MailMessage();
                        msg1.From = new MailAddress("jithu384710@gmail.com");
                        msg1.To.Add(txte_email.Text);
                        msg1.Subject = "FCA Username and PAssword";
                        msg1.Body = "Username : " + uname + "\n" + "Password : " + pwd;
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



                ///////////////////////////////


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

        private void LoadEmployeeDetails()
        {
            EmployeeRegistrationClass objemp = new EmployeeRegistrationClass();
            objemp.Eid = Convert.ToInt32(Session["eid"]);
            DataTable dispemp = new DataTable();
            dispemp = objemp.LoadEmployeeDetails();
            if (dispemp.Rows.Count > 0)
            {
                ddE_branchname.SelectedValue = Convert.ToString(dispemp.Rows[0]["Branch_id"]);
                txte_name.Text = Convert.ToString(dispemp.Rows[0]["E_name"]);
                txte_address.Text = Convert.ToString(dispemp.Rows[0]["E_address"]);

                txte_dob.Text = Convert.ToString(dispemp.Rows[0]["E_dob"]);
                txte_phone.Text = Convert.ToString(dispemp.Rows[0]["E_phone"]);
                txte_email.Text = Convert.ToString(dispemp.Rows[0]["E_email"]);
                dd_emstatus.Text = Convert.ToString(dispemp.Rows[0]["E_mstatus"]);
                dde_designation.Text = Convert.ToString(dispemp.Rows[0]["E_designation"]);
                imgPhoto.ImageUrl = Convert.ToString(dispemp.Rows[0]["E_photo"]);
                txte_joindate.Text = Convert.ToString(dispemp.Rows[0]["E_joinDate"]);

                if (Convert.ToString(dispemp.Rows[0]["E_gender"]) == "Male")
                {
                    rb_Emale.Checked = true;
                    rb_Efemale.Checked = false;
                }
                else
                {
                    rb_Emale.Checked = false;
                    rb_Efemale.Checked = true;

                }
            }
        }
    }
}