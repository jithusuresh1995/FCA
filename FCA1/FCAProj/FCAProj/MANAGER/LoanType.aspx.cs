using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.MANAGER
{
    public partial class LoanType : System.Web.UI.Page
    {
        AddLoantypeClass obj = new AddLoantypeClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            obj.Lname = txt_lname.Text;
            obj.Details = txt_ldetails.Text;
            obj.Interest = Convert.ToDouble(txt_linterest.Text);
            obj.Minamt = Convert.ToDouble(txt_Lminamt.Text);
            obj.Maxamt = Convert.ToDouble(txt_Lmaxamt.Text);
            obj.Minduration = Convert.ToInt32(txt_Lminduration.Text);
            obj.Maxduration = Convert.ToInt32(txt_Lmaxduration.Text);
            obj.InsertLoantype();
        }
    }
}