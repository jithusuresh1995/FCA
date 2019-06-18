using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.CUSTOMER
{
    public partial class Loanapplication : System.Web.UI.Page
    {
        CustomerRegistrationClass obj = new CustomerRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_apply_Click(object sender, EventArgs e)
        {
            obj.Ltype = dd_ltype.Text;
            obj.Lamount = Convert.ToDouble(txt_lamount.Text);
            obj.Duration = Convert.ToInt32(txt_lduration.Text);
            obj.Lpurpose = txt_lpurpose.Text;
            obj.Guranter = txt_guranter.Text;
            obj.Gaddress = txt_address.Text;
            obj.Gphone = txt_phone.Text;
            obj.Gidproof = dd_idproof.Text;
            obj.Gproofno = txt_proofno.Text;
            obj.Cid = Convert.ToInt32(Session["Cid"]);
            obj.LoanApplication();
        }
    }
}