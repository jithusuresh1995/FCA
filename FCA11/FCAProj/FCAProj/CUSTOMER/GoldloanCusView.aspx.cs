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
            if (e.CommandName == "View")
                Session["goldno"] = Convert.ToString(e.CommandArgument);
            //obj.Mid = Convert.ToInt32(Session["Bid"]);

            obj.Goldno = Session["goldno"].ToString();
            DataTable interest = new DataTable();
            interest = obj.Viewinterstdetails();
            if (interest.Rows.Count > 0)
            {
                Gridinterstdetails.DataSource = interest;
                Gridinterstdetails.DataBind();
                //txt_paidamount.Text = Convert.ToString(dtReg.Rows[0][""]);
            }

            txt_paidamount.Visible = true;
            lbl_amount_tobe_paid.Visible = true;
            lbl_amtpaid.Visible = true;
            lbl_topaid.Visible = true;
            btn_pay.Visible = true;
            obj.Cid = Convert.ToInt32(Session["Cid"]);
            obj.Paiddate = System.DateTime.Now.ToString("dd/MM/yyyy");
            string pdate = obj.Paiddate;

            DataTable dtReg = new DataTable();
            dtReg = obj.fetchloandata();
            if (dtReg.Rows.Count > 0)
            {
                
                obj.Loandate = Convert.ToString(dtReg.Rows[0]["Date"]);
                obj.Goldloanamount = Convert.ToDouble(dtReg.Rows[0]["Creditamount"]);
            }
           

            string ldate = obj.Loandate;
            DateTime loandate = Convert.ToDateTime(ldate);
            DateTime presentdate = Convert.ToDateTime(pdate); 
            double n = (presentdate - loandate).TotalDays;
            double amt = obj.Goldloanamount;
            //Double r = obj.Rate;
            double interestamount = (amt * n * .06) / (365 * 100);
            double amount = amt + interestamount;
            double amt1 = Math.Round(amount,2);
            lbl_amount_tobe_paid.Text = Convert.ToString(amt1);
           

           
        }

        protected void btn_pay_Click(object sender, EventArgs e)
        {
            obj.Goldloanamount = Convert.ToDouble(lbl_amount_tobe_paid.Text);
            double gamount = obj.Goldloanamount;
            obj.Paidamount = Convert.ToDouble(txt_paidamount.Text);
            double pamount = obj.Paidamount;
            obj.Creditamount = gamount - pamount;
            obj.Goldno = Session["goldno"].ToString();
            obj.InsertgoldInterest();
            Gridinterstdetails.Visible = false;
            txt_paidamount.Text = "";
        }
    }
}