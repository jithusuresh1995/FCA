using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.EMPLOYEE_MDL
{
    public partial class ChitAuction : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Branchid = Convert.ToInt32(Session["Branchid"]);
            if (!IsPostBack)
            {
                DataTable chitno = new DataTable();
                
                chitno = obj.ReadchitNumber();
                if (chitno.Rows.Count > 0)
                {

                    dd_Chitno.DataSource = chitno;
                    dd_Chitno.DataTextField = "Chit_no";
                    dd_Chitno.DataValueField = "Chitfund_id";
                    dd_Chitno.DataBind();
                    dd_Chitno.Items.Insert(0, new ListItem("--Select--", "0"));
                }
            }
        }


        protected void btn_auctionopen_Click(object sender, EventArgs e)
        {
            obj.Chitid =  Convert.ToInt32(dd_Chitno.SelectedValue);
            obj.Installmntno = Convert.ToInt32(txt_installno.Text);
            string sd= txt_startdate.Text.ToString();
            
            string st = Convert.ToDateTime(txt_stime.Text).ToString("hh:mm:ss tt");
            obj.Opendate = sd +" "+ st;
            string ed = txt_closedate.Text.ToString();
            string et = Convert.ToDateTime(txt_ctime.Text).ToString("hh:mm:ss tt");
            obj.Closedate = ed +" "+ et;
            obj.InsertChitAuction();
            Response.Write("<script>alert('Auction opened')</script>");
            txt_installno.Text = "";
            txt_closedate.Text = "";
            txt_ctime.Text = "";
            txt_startdate.Text = "";
            txt_stime.Text  = "";

        }

        protected void dd_Chitno_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            obj.Chitid = Convert.ToInt32(dd_Chitno.SelectedValue);
            txt_installno.Text = obj.InstallNum().ToString();

        }
    }
}