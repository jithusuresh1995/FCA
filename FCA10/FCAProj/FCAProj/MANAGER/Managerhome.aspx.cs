using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.MANAGER
{
    public partial class Managerhome : System.Web.UI.Page
    {
        ManagerRegistrationClass obj = new ManagerRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            obj.Mid = Convert.ToInt32(Session["MId"]);
            DataTable dtReg = new DataTable();
            dtReg = obj.readcusname();
            if (dtReg.Rows.Count > 0)
            {

                lbl_name.Text = Convert.ToString(dtReg.Rows[0]["M_name"]);

            }
        }
    }
}