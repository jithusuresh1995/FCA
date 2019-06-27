using FCAProj.FCACLASS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCAProj.CUSTOMER
{
    public partial class Cus_ChitInstallmentDet : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Cusid = Convert.ToInt32(Session["Cid"]);
                DataTable dtReg = new DataTable();
                dtReg = obj.CustomerChitsView();
                if (dtReg.Rows.Count > 0)
                {
                    Gridcuschitview1.DataSource = dtReg;
                    Gridcuschitview1.DataBind();

                    //txt_paidamount.Text = Convert.ToString(dtReg.Rows[0][""]);
                }
            }
        }

        protected void Gridcuschitview_SelectedIndexChanged(object sender, EventArgs e)
        {/*
            int rid = Convert.ToInt32(Gridcuschitview1.SelectedDataKey.Value) - 1;
            obj.Cusid = Convert.ToInt32(Session["Cid"]);
            DataTable dtReg = new DataTable();
            dtReg = obj.CustomerChitsView();
            int inst = Convert.ToInt16(dtReg.Rows[rid]["Installment_no"]);
            int Chitno = Convert.ToInt16(dtReg.Rows[rid]["Chit_no"]);

            obj.Bchitid = Chitno;
            obj.Binstallmentno = inst;

            int cnt = obj.BidClearnessInsta();
            if (cnt != 0)
            {
                Session["chitno"] = Chitno;

                Response.Redirect("~/CUSTOMER/ChitInstallmentpay.aspx");
            }
            else
            {
                Response.Write("<script>alert('You are already paid this installment first')</script>");
            }*/
        }

        protected void Gridcuschitview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "inst")
            {
                Session["chitno"] = Convert.ToString(e.CommandArgument);

                Response.Redirect("~/CUSTOMER/ChitInstallmentpay.aspx");
            }
        }
    }
}