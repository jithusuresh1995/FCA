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

namespace FCAProj
{
    public partial class Forgotpassword : System.Web.UI.Page
    {
        LoginClass obj = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = "";
            string Uname = "";
            string Pswd = "";
            string emai = "";
            obj.Uname = TxtEmail.Text.ToString();
            DataTable fpass = new DataTable();
            fpass = obj.Forgotpassword();
            if (fpass.Rows.Count > 0)
            {

                if (Convert.ToString(fpass.Rows[0]["Login_type"]) == "Mgr")
                {
                     Name = fpass.Rows[0]["M_name"].ToString();
                     Uname = fpass.Rows[0]["Username"].ToString();
                     Pswd = fpass.Rows[0]["Password"].ToString();
                    emai = fpass.Rows[0]["M_email"].ToString();
                }
                if (Convert.ToString(fpass.Rows[0]["Login_type"]) == "Emp")
                {
                     Name = fpass.Rows[0]["E_name"].ToString();
                     Uname = fpass.Rows[0]["Username"].ToString();
                     Pswd = fpass.Rows[0]["Password"].ToString();
                    emai = fpass.Rows[0]["E_email"].ToString();
                }
                if (Convert.ToString(fpass.Rows[0]["Login_type"]) == "Cus")
                {
                     Name = fpass.Rows[0]["C_name"].ToString();
                     Uname = fpass.Rows[0]["Username"].ToString();
                     Pswd = fpass.Rows[0]["Password"].ToString();
                    emai = fpass.Rows[0]["C_email"].ToString();
                }

                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter ht = new HtmlTextWriter(sw))
                    {
                        string msg = "Hi " + Name + ",<br>" + "You have recently submitted a forgot password request on FCA." + "<br>" + "Your Username and Password are as follow: <br>" + "Username :" + Uname + "<br>Password :" + Pswd;

                        StringReader sr = new StringReader(sw.ToString());
                        MailMessage mail = new MailMessage();
                        mail.From = new MailAddress("jithu384710@gmail.com");
                        mail.To.Add(emai);
                        mail.Subject = "Forgot Password Request";
                        // string body = LblMsg.Text.ToString();
                        mail.Body = msg;
                        mail.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        System.Net.NetworkCredential nt = new NetworkCredential();
                        nt.UserName = "jithu384710@gmail.com";
                        nt.Password = "jithu1995";
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = nt;
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                    }
                }
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please Enter Registered Email Address')</script>");
            }

           
            LblPswd.Visible = true;
        }
    }
}