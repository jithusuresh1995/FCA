using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.EMPLOYEE_MDL
{
    public partial class Employeehome : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Eid = Convert.ToInt32(Session["EId"]);
            DataTable dtReg = new DataTable();
            dtReg = obj.readcusname();
            if (dtReg.Rows.Count > 0)
            {

                lbl_name.Text = Convert.ToString(dtReg.Rows[0]["E_name"]);

            }
        }
    }
}