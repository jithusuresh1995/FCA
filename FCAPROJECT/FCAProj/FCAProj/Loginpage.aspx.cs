using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj
{
    public partial class Loginpage : System.Web.UI.Page
    {
        LoginClass obj = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            

        }

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            string dtReg = "";
            obj.Username = txt_username.Text;
            obj.Password = txt_password.Text;
            dtReg = obj.ExecuteSelectQueries();
            if (dtReg !=null)
            {
               
                
                if(dtReg == "Admin")
                {
                    //Label3.Text = "Admin success fully logged";
                    Session["Admin"] = txt_username.Text;
                    Response.Redirect("~/ADMIN_MDL/Adminhomepage.aspx");
                }
                if (dtReg == "Mgr")
                {
                    Session["Mgr"] = txt_username.Text;
                    Label3.Text = "Manager success fully logged";
                }
                if (dtReg == "Emp")
                {
                    Session["Emp"] = txt_username.Text;
                    Label3.Text = "Employee success fully logged";
                }
                if (dtReg == "Cust")
                {
                    Session["Cust"] = txt_username.Text;
                    Label3.Text = "Customer success fully logged";
                }
            }
            else
            {
                Label3.Text = "UserId & Password Is not correct Try again..!!";
            }
        }
    }
}