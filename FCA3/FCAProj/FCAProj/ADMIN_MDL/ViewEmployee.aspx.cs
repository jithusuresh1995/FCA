using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.ADMIN_MDL
{
    public partial class ViewEmployee : System.Web.UI.Page
    {
        ViewbranchClass obj=new ViewbranchClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.Execute_ViewEmployee();
                if (dtReg.Rows.Count > 0)
                {
                    Gridviewemployee.DataSource = dtReg;
                    Gridviewemployee.DataBind();
                }
            }
        }

        protected void Gridviewemployee_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
                Session["eid"] = Convert.ToString(e.CommandArgument);

            Response.Redirect("~/ADMIN_MDL/EmployeeRegistration.aspx");
        }
    }
}