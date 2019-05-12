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
    public partial class ViewChitDetails : System.Web.UI.Page
    {
        AddChitFundClass obj =new  AddChitFundClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Branchid = Convert.ToInt32(Session["BranchId"]);
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.ViewChitsDetails();
                if (dtReg.Rows.Count > 0)
                {
                    GridviewChitdetails.DataSource = dtReg;
                    GridviewChitdetails.DataBind();
                }
            }
                
        }
    }
}