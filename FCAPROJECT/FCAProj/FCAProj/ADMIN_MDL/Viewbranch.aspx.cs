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
    public partial class Viewbranch : System.Web.UI.Page
    {
        ViewbranchClass obj = new ViewbranchClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.Execute_Viewbranch();
                if (dtReg.Rows.Count > 0)
                {
                    Gridviewbranch.DataSource = dtReg;
                    Gridviewbranch.DataBind();
                }
            }

        }
    }
}