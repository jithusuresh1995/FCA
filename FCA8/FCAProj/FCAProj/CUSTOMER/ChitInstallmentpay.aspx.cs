using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.CUSTOMER
{
    public partial class ChitInstallmentpay : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Chitnumber = Convert.ToInt32(Session["chitno"]);
            txt_chitno.Text =Convert.ToString( obj.Chitnumber);
            txt_installno.Text = obj.ChitInstallNum().ToString();
            DataTable dtReg = new DataTable();
            dtReg = obj.readinstallmentamount();
            if (dtReg.Rows.Count > 0)
            {

                txt_amount.Text = Convert.ToString(dtReg.Rows[0]["Chit_installment"]);
                
            }
            
        }

        protected void btn_pay_Click(object sender, EventArgs e)
        {
            obj.Bcid = Convert.ToInt32(Session["Cid"]);
            obj.Chitno = txt_chitno.Text;
            obj.Installmentnum =Convert.ToInt32(txt_installno.Text);
            obj.Insatllmentamount = Convert.ToInt32(txt_amount.Text);
            obj.InsertChitInsatallment();

            txt_amount.Text = "";
            txt_chitno.Text = "";
            txt_installno.Text = "";

        }
    }
}