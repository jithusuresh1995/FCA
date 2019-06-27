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
    public partial class GoldReceipt : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Cid = Convert.ToInt32(Session["cid"]);
            DataTable dtCheck = new DataTable();
            dtCheck = obj.goldreceipt();
            if (dtCheck.Rows.Count > 0)
            {
                lbl_name.Text = Convert.ToString(dtCheck.Rows[0][0]);
                lbl_address.Text = Convert.ToString(dtCheck.Rows[0][1]);
                // mothername.Text = Convert.ToString(dtCheck.Rows[0][2]);
                //cusimage.ImageUrl = dtCheck.Rows[0][2].ToString();
                lbl_branch.Text = Convert.ToString(dtCheck.Rows[0][2]);
                lbl_goldno.Text = Convert.ToString(dtCheck.Rows[0][3]);
                lbl_date.Text = Convert.ToString(dtCheck.Rows[0][4]);
                lbl_amount.Text = Convert.ToString(dtCheck.Rows[0][5]);


            }
            DataTable dtReg = new DataTable();
            
            dtReg = obj.golditemreceipt();
            if (dtReg.Rows.Count > 0)
            {
                Griditem.DataSource = dtReg;
                Griditem.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}