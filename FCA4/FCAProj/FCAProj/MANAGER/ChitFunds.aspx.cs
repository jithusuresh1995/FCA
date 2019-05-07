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

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            obj.Chitname = txt_chitname.Text;
            obj.Chitamount1 = Convert.ToDouble(txt_chitamount.Text);
            obj.Details = txt_details.Text;
            obj.Startdate = txt_startdate.Text;
            obj.Installamt1 = Convert.ToDouble(txt_installamt.Text);
            obj.Tenure = Convert.ToInt32(txt_tenure.Text);
            obj.Chitno = txt_chitno.Text;
            obj.Mid= Convert.ToInt32(Session["Mid"]);
            obj.InsertChitFund();
        }
    }
}