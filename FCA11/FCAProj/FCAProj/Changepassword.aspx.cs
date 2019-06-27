using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj
{
    
    public partial class Changepassword : System.Web.UI.Page
    {
        LoginClass obj = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            string Cpassword = "";
            //string New_pswd = "";
            string Cnew_pswd = "";
            if (!string.IsNullOrEmpty(Session["CId"] as string))
            {
                obj.Cid = Convert.ToInt32(Session["CId"].ToString());
                obj.Uname = Session["uname"].ToString();
                Cpassword = TxtCPswd.Text.ToString();
                obj.New_pswd = TxtNPswd.Text.ToString();
                Cnew_pswd = TxtCNPswd.Text.ToString();
                obj.ChangePassword();
                obj.ChangePasswordcus();

            }
            else if (!string.IsNullOrEmpty(Session["EId"] as string))
            {
                obj.Eid = Convert.ToInt32(Session["EId"].ToString());
                obj.Uname = Session["uname"].ToString();
                Cpassword = TxtCPswd.Text.ToString();
               obj.New_pswd = TxtNPswd.Text.ToString();
                Cnew_pswd = TxtCNPswd.Text.ToString();
                obj.ChangePassword();
                obj.ChangePasswordemp();
            }
             else if (!string.IsNullOrEmpty(Session["MId"] as string))
            {
                obj.Mid = Convert.ToInt32(Session["MId"].ToString());
                obj.Uname = Session["uname"].ToString();
                Cpassword = TxtCPswd.Text.ToString();
                obj.New_pswd = TxtNPswd.Text.ToString();
                Cnew_pswd = TxtCNPswd.Text.ToString();
                obj.ChangePassword();
                obj.ChangePasswordman();
            }

            Response.Redirect("~/Loginpage.aspx");
        }
        
    }
    
}