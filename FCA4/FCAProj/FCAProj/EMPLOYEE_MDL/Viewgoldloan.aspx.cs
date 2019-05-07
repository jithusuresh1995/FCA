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
    public partial class Viewgoldloan : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Branchid = Convert.ToInt32(Session["BranchId"]);
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.Execute_Viewgolddetails();
                if (dtReg.Rows.Count > 0)
                {
                    Gridviewloan.DataSource = dtReg;
                    Gridviewloan.DataBind();
                }
            }
        }

        protected void Gridviewloan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Items")
            {
                obj.Goldid = Convert.ToInt32(e.CommandArgument);
                DataTable dispitem = new DataTable();

                dispitem = obj.displaygolditem();
                if (dispitem.Rows.Count > 0)
                {
                    Gridviewitem.DataSource = dispitem;
                    Gridviewitem.DataBind();
                }
            }
        }
    }
}