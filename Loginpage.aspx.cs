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
            DataTable dtReg = new DataTable();
            obj.Username = txt_username.Text;
            obj.Password = txt_password.Text;
            dtReg = obj.ExecuteSelectQueries();
            if (dtReg.Rows.Count > 0)
            {
                String type1 = "";

                type1 += dtReg.Rows[0]["Login_type"];  //Row[0]["Login_type"];
                
                if(type1 == "Admin")
                {
                    //Label3.Text = "Admin success fully logged";
                    Response.Redirect("~/ADMIN_MDL/BranchRegistration.aspx");
                }
                if (type1 == "Mgr")
                {
                    Label3.Text = "Manager success fully logged";
                }
                if (type1 == "Emp")
                {
                    Label3.Text = "Employee success fully logged";
                }
                if (type1 == "Cust")
                {
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