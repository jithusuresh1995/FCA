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
    public partial class Viewmanager : System.Web.UI.Page
    {
        ViewbranchClass obj = new ViewbranchClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.Execute_Viewmanager();
                if (dtReg.Rows.Count > 0)
                {
                    Gridviewmanager.DataSource = dtReg;
                    Gridviewmanager.DataBind();
                }
            }

        }

        protected void Gridviewmanager_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            if (e.CommandName == "Update") 
            Session["mid"]=Convert.ToString(e.CommandArgument);

            Response.Redirect("~/ADMIN_MDL/ManagerRegistration.aspx");
            // response.Redirect("~/PrintBilledReport.aspx?sentence=" + s)
        }
    }
}