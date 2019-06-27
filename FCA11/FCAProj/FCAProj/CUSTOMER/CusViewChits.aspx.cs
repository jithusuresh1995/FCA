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
            int cid= Convert.ToInt32(Session["Cid"]);

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
                            int cnt = obj.BidClearnessInsta();
                            if (cnt != 0)
                            {
                                int cus = 0;
                                DataTable d = new DataTable();
                                d = obj.ChitOwned();
                                for(int k = 0; k < d.Rows.Count; k++)
                                {
                                    if (Convert.ToInt32(d.Rows[i]["Auct_Owned"].ToString()) == cid)
                                    {
                                        cus = 1;
                                        break;
                                    }
                                }
                                if (cus == 0)
                                {
                                    Response.Redirect("~/CUSTOMER/AuctionBid.aspx?InstallNo=" + inst + "&ChitFundId=" + Chitno + "&ChitAmount=" + ChitAmount);

                                }
                                else
                                {
                                    Response.Write("<script>alert('You are already owned this chit')</script>");
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('You must pay installment first')</script>");

                            }


                        }
                        else
                        {
                            Response.Write("<script>alert('You are already bid')</script>");
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
            int rid = Convert.ToInt32(Gridcuschitview.SelectedDataKey.Value) -1;



            obj.Cusid = Convert.ToInt32(Session["Cid"]);
            int cid = Convert.ToInt32(Session["Cid"]);

            DataTable dtReg = new DataTable();
            dtReg = obj.CustomerChitsView();
            if (dtReg.Rows[rid]["Status"].ToString() == "Open")
            {
                int inst = Convert.ToInt16(dtReg.Rows[rid]["Installment_no"]);
                int Chitno = Convert.ToInt16(dtReg.Rows[rid]["Chit_no"]);
                string ChitAmount = dtReg.Rows[rid]["Chit_amount"].ToString();

                obj.Cusid = Convert.ToInt32(Session["Cid"]);
                obj.Bchitid = Chitno;
                obj.Binstallmentno = inst;
                int count = obj.BidClearness();
                if (count == 0)
                {
                    int cnt = obj.BidClearnessInsta();
                    if (cnt != 0)
                    {
                        int cus = 0;
                        DataTable d = new DataTable();
                        d = obj.ChitOwned();
                        for (int k = 0; k < d.Rows.Count; k++)
                        {
                            if (Convert.ToInt32(d.Rows[k]["Auct_Owned"].ToString()) == cid)
                            {
                                cus = 1;
                                break;
                            }
                        }
                        if (cus == 0)
                        {
                            Response.Redirect("~/CUSTOMER/AuctionBid.aspx?InstallNo=" + inst + "&ChitFundId=" + Chitno + "&ChitAmount=" + ChitAmount);

                        }
                        else
                        {
                            Response.Write("<script>alert('You are already owned this chit')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('You must pay installment first')</script>");

                    }


                }
                else
                {
                    Response.Write("<script>alert('You are already bid')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Auction closed')</script>");

            }

        }

       
    }
}