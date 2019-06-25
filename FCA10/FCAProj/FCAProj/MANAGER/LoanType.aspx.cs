using System;
using System.Collections.Generic;
using System.Data;
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
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Session["lid"])))
                {
                    LoadloanDetails();
                }
            }
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
            obj.Mid = Convert.ToInt32(Session["BranchId"]);

            if (!string.IsNullOrEmpty(Convert.ToString(Session["lid"])))
            {

                obj.Lid = Convert.ToInt32(Session["lid"]);
                obj.UpdateloanDetails();
            }
            else
            {
                obj.InsertLoantype();
            }

            txt_ldetails.Text = "";
            txt_linterest.Text = "";
            txt_Lmaxamt.Text = "";
            txt_Lmaxduration.Text = "";
            txt_Lminamt.Text = "";
            txt_Lminduration.Text = "";
            txt_lname.Text = "";
        }
        public void LoadloanDetails()
        {
            AddLoantypeClass objBr = new AddLoantypeClass();
            objBr.Lid = Convert.ToInt32(Session["lid"]);
            DataTable dispBr = new DataTable();
            dispBr = objBr.loadloan();
            if (dispBr.Rows.Count > 0)
            {

                txt_lname.Text = Convert.ToString(dispBr.Rows[0]["L_name"]);
                txt_ldetails.Text = Convert.ToString(dispBr.Rows[0]["L_details"]);
                txt_linterest.Text = Convert.ToString(dispBr.Rows[0]["L_interestrate"]);
                txt_Lminamt.Text = Convert.ToString(dispBr.Rows[0]["L_minamount"]);
                txt_Lmaxamt.Text = Convert.ToString(dispBr.Rows[0]["L_maxamount"]);
                txt_Lminduration.Text = Convert.ToString(dispBr.Rows[0]["L_minduration"]);
                txt_Lmaxduration.Text = Convert.ToString(dispBr.Rows[0]["L_maxduration"]);
                

            }
        }
    }
}