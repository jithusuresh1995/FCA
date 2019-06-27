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
    public partial class viewgoldloan : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string bid = Session["BranchId"].ToString();
                obj.Branchid = Convert.ToInt32(bid);
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.Execute_Viewgolddetails();
                if (dtReg.Rows.Count > 0)
                {
                    GridViewcusgold.DataSource = dtReg;
                    GridViewcusgold.DataBind();
                }
            }
            Label1.Visible = false;


        }

        protected void GridViewcusgold_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Item")
            {
                Label1.Visible = true;
                obj.Goldid = Convert.ToInt32(e.CommandArgument);
                DataTable dispitem = new DataTable();

                dispitem = obj.displaygolditem();
                if (dispitem.Rows.Count > 0)
                {
                    GridViewitemgold.DataSource = dispitem;
                    GridViewitemgold.DataBind();
                }
            }

        }
    }
}