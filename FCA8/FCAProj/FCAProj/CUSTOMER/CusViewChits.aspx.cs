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
    public partial class CusViewChits : System.Web.UI.Page
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
                    Gridcuschitview.DataSource = dtReg;
                    Gridcuschitview.DataBind();
                   
                    //txt_paidamount.Text = Convert.ToString(dtReg.Rows[0][""]);
                }
            }
        }
        
       protected void btn_auctionopen_Click(object sender, EventArgs e)
        {
            obj.Cusid = Convert.ToInt32(Session["Cid"]);
            DataTable dtReg = new DataTable();
            dtReg = obj.CustomerChitsView();
            if (dtReg.Rows.Count > 0)
            {
                
                int i =0;
                for (i =0; i < dtReg.Rows.Count; i++)
                {
                    if (dtReg.Rows[i]["Status"].ToString() == "Open")
                    {
                        int inst = Convert.ToInt16(dtReg.Rows[i]["Installment_no"]);
                        int Chitno = Convert.ToInt16(dtReg.Rows[i]["Chit_no"]);
                        string ChitAmount = dtReg.Rows[i]["Chit_amount"].ToString();
                        
                        obj.Cusid = Convert.ToInt32(Session["Cid"]);
                        obj.Bchitid = Chitno;
                        obj.Binstallmentno = inst;
                        int count = obj.BidClearness();
                        if (count == 0)
                        {
                            Response.Redirect("~/CUSTOMER/AuctionBid.aspx?InstallNo=" + inst +"&ChitFundId=" + Chitno + "&ChitAmount=" + ChitAmount);

                        }
                        else
                        {
                            Response.Write("<script>alert('Your already bid')</script>");
                        }

                    }
                    else 
                    {
                        Response.Write("<script>alert('Auction closed')</script>");

                    }
                }
            }
        }

        protected void Gridcuschitview_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}