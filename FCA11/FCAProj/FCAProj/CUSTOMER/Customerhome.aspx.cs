using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.CUSTOMER
{
    public partial class Customerhome : System.Web.UI.Page
    {
        CustomerRegistrationClass obj = new CustomerRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
             obj.Cid= Convert.ToInt32(Session["CId"]);
            DataTable dtReg = new DataTable();
            dtReg = obj.readcusname();
            if (dtReg.Rows.Count > 0)
            {

                lbl_name.Text = Convert.ToString(dtReg.Rows[0]["C_name"]);

            }

        }
    }
}