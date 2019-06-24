using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.CUSTOMER
{
    public partial class AuctionBid : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        public string bin;
        public string bchit;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Bcid = Convert.ToInt32(Session["Cid"]);
            //obj.Binstallmentno = Convert.ToInt32( Request["InstallNo"]);
            // obj.Bchitid = Convert.ToInt32( Request["ChitFundId"]); 
            string amount = Request.QueryString["ChitAmount"].ToString();
            
            Label2.Text = "You can bid amount lessthan or equal " + amount;

        }

        protected void btn_bid_Click(object sender, EventArgs e)
        {
            
            obj.Bcid = Convert.ToInt32(Session["Cid"]);
            bin = Request.QueryString["InstallNo"].ToString();
            bchit= Request.QueryString["ChitFundId"].ToString();
            obj.Binstallmentno = Convert.ToInt32(bin);
            obj.Bchitid = Convert.ToInt32(bchit);
            obj.Bidamount = Convert.ToInt32( txt_bidamount.Text);
            obj.InsertBidamount();
            Response.Write("<script>alert('Your Successfully bid')</script>");
            Response.Redirect("~/CUSTOMER/CusViewChits.aspx?");
        }
    }
}