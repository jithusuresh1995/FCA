using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.MANAGER
{
    public partial class ChitFunds : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.GenerateAutochitNo();
                lbl_chitnum.Text = obj.Chitno;
            }

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            //obj.Chitname = txt_chitname.Text;
            obj.Chitamount1 = Convert.ToDouble(txt_chitamount.Text);
            obj.Details = txt_details.Text;
            obj.Startdate = txt_startdate.Text;
            obj.Installamt1 = Convert.ToDouble(txt_installamt.Text);
            obj.Tenure = Convert.ToInt32(txt_tenure.Text);
             obj.Chitno = lbl_chitnum.Text;
            obj.Bid= Convert.ToInt32(Session["BranchId"]);
            obj.InsertChitFund();

            txt_chitamount.Text = "";
            txt_details.Text = "";
            txt_installamt.Text = "";
            txt_startdate.Text = "";
            txt_tenure.Text = "";
            
            
        }
    }
}