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
            dtReg = obj.ExecuteLogin();
            if (dtReg !=null)
            {
               
                
                if(Convert.ToString(dtReg.Rows[0]["Login_type"]) == "Admin")
                {
                    //Label3.Text = "Admin success fully logged";
                    Session["Admin"] = txt_username.Text;
                    Response.Redirect("~/ADMIN_MDL/Adminhomepage.aspx");
                }
                if (Convert.ToString(dtReg.Rows[0]["Login_type"]) == "Mgr")
                {
                    Session["Mgr"] = txt_username.Text;
                    Session["MId"] = Convert.ToString(dtReg.Rows[0]["M_id"]);
                    Response.Redirect("~/MANAGER/Managerhome.aspx");
                }
                if (Convert.ToString(dtReg.Rows[0]["Login_type"]) == "Emp")
                {
                    Session["Emp"] = txt_username.Text;
                    Session["EId"] = Convert.ToString(dtReg.Rows[0]["Emp_id"]);
                    Session["BranchId"] = Convert.ToString(dtReg.Rows[0]["Branch_id"]); 
                    Response.Redirect("~/EMPLOYEE_MDL/Employeehome.aspx");
                }
                if (Convert.ToString(dtReg.Rows[0]["Login_type"]) == "Cus")
                {
                    Session["Cust"] = txt_username.Text;
                    Session["CId"] = Convert.ToString(dtReg.Rows[0]["C_id"]);
                    Response.Redirect("~/CUSTOMER/Customerhome.aspx");
                }
            }
            else
            {
                Label3.Text = "UserId & Password Is not correct Try again..!!";
            }
        }

        protected void txt_username_TextChanged(object sender, EventArgs e)
        {

        }
    }
}