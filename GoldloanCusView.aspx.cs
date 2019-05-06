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
    public partial class GoldloanCusView : System.Web.UI.Page
    {
        CustomerRegistrationClass obj = new CustomerRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Cid = Convert.ToInt32(Session["Cid"]);
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.ViewGoldDetails_Cus();
                if (dtReg.Rows.Count > 0)
                {
                    GridgoldloanCus.DataSource = dtReg;
                    GridgoldloanCus.DataBind();
                    //txt_paidamount.Text = Convert.ToString(dtReg.Rows[0][""]);
                }
            }

            txt_paidamount.Visible = false;
            lbl_amount_tobe_paid.Visible = false;
            lbl_amtpaid.Visible = false;
            lbl_topaid.Visible = false;
            btn_pay.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridgoldloanCus_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridgoldloanCus_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            txt_paidamount.Visible = true;
            lbl_amount_tobe_paid.Visible = true;
            lbl_amtpaid.Visible = true;
            lbl_topaid.Visible = true;
            btn_pay.Visible = true;
            obj.Cid = Convert.ToInt32(Session["Cid"]);
            obj.Paiddate = System.DateTime.Now.ToString("dd/MM/yyyy");
            string pdate = obj.Paiddate;
            obj.Loandate = obj.fetchgoldloandate();
            string ldate = obj.Loandate;
            DateTime loandate = Convert.ToDateTime(ldate);
            DateTime presentdate = Convert.ToDateTime(pdate);
            double n = (presentdate - loandate).TotalDays;
            obj.Goldloanamount = obj.fetchamount();
            double amt = obj.Goldloanamount;

           // string paidDate = obj.Paiddate();
        }
    }
}