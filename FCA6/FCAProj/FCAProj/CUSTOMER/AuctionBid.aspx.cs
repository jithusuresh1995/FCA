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

        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Cusid = Convert.ToInt32(Session["Cid"]);
            obj.Binstallmentno = Convert.ToInt32( Request["InstallNo"]);
            obj.Bchitid = Convert.ToInt32( Request["ChitFundId"]); 

        }

        protected void btn_bid_Click(object sender, EventArgs e)
        {
            obj.Bidamount = Convert.ToInt32( txt_bidamount.Text);
            obj.InsertBidamount();
        }
    }
}