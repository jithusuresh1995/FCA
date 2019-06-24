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
    public partial class Chitmemberdetails : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Branchid = Convert.ToInt32(Session["BranchId"]);
            if (!IsPostBack)
            {
                DataTable chitno = new DataTable();

                chitno = obj.ReadchitNumber();
                if (chitno.Rows.Count > 0)
                {

                    dd_chitnumber.DataSource = chitno;
                    dd_chitnumber.DataTextField = "Chit_no";
                    dd_chitnumber.DataValueField = "Chitfund_id";
                    dd_chitnumber.DataBind();
                }

                
                //obj.Bid = Convert.ToInt32(Session["BranchId"]);
                DataTable cus = new DataTable();

                cus = obj.ReadCustomer();
                if (cus.Rows.Count > 0)
                {

                    dd_customer.DataSource = cus;
                    dd_customer.DataTextField = "C_name";
                    dd_customer.DataValueField = "C_id";
                    dd_customer.DataBind();
                }
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            obj.Cuschitnumber1 = Convert.ToInt32(dd_chitnumber.SelectedValue);
            obj.Cid = Convert.ToInt32(dd_customer.SelectedValue);
            obj.Date = txt_joindate.Text;
            obj.InsertChitCustomer();
        }
    }
}