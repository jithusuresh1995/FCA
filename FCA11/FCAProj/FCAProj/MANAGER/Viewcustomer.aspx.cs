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
    public partial class Viewcustomer : System.Web.UI.Page
    {
        ViewbranchClass obj = new ViewbranchClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Bid = Convert.ToInt32(Session["BranchId"]);
            if (!IsPostBack)
            {
                DataTable dtReg = new DataTable();
                dtReg = obj.Execute_Viewcustomer();
                if (dtReg.Rows.Count > 0)
                {
                    GridViewcus.DataSource = dtReg;
                    GridViewcus.DataBind();
                }
            }
        }
    }
}