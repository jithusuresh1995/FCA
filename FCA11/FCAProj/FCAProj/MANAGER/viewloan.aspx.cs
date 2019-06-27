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
    public partial class viewloan : System.Web.UI.Page
    {
        AddLoantypeClass obj = new AddLoantypeClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Mid = Convert.ToInt32(Session["BranchId"]);
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.viewgoldloan();
                if (dtReg.Rows.Count > 0)
                {
                    Gridviewloan.DataSource = dtReg;
                    Gridviewloan.DataBind();
                }
            }
        }

        protected void Gridviewloan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
                Session["lid"] = Convert.ToString(e.CommandArgument);

            Response.Redirect("~/MANAGER/LoanType.aspx");
        }
    }
}