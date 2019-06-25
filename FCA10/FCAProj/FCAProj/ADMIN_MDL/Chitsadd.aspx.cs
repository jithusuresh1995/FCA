using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.ADMIN_MDL
{
    public partial class Chitsadd : System.Web.UI.Page
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
            obj.Chitamount1 = Convert.ToDouble(txt_chitamount.Text);
            obj.Details = txt_details.Text;
            obj.Startdate = txt_startdate.Text;
            obj.Installamt1 = Convert.ToDouble(txt_installamt.Text);
            obj.Tenure = Convert.ToInt32(txt_tenure.Text);
            obj.Chitno = lbl_chitnum.Text;
            //obj.Mid= Convert.ToInt32(Session["Mid"]);
            obj.InsertChitFund();
        }
    }
}