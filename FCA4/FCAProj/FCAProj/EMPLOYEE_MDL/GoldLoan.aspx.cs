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
    public partial class GoldLoan : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                obj.GenerateAutoGoldNo();
                lbl_goldno.Text = obj.Goldno;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
           
                DataTable dispcus = new DataTable();
            obj.AccountName = txt_name.Text;
            obj.AccountNo =(!string.IsNullOrEmpty(txt_accountno.Text))?Convert.ToInt32(txt_accountno.Text):0;
            obj.Mobile = txt_phone.Text;
            obj.Branchid =Convert.ToInt32(Session["BranchId"]);
                dispcus = obj.Readcustomerdetails();
                if (dispcus.Rows.Count > 0)
                {
                    Gridcusdisplay.DataSource = dispcus;
                    Gridcusdisplay.DataBind();
                    dvGridCusDisplay.Visible = true;
                }

            txt_name.Text = "";
            txt_phone.Text = "";
            txt_accountno.Text = "";
           

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            obj.Gitem = dd_Gitem.Text;
            obj.Count = Convert.ToInt32(txt_gcount.Text);
            obj.Weight = Convert.ToDouble(txt_gweight.Text);
            obj.Insertgolditems();

            BindGrid();
            
            
            
            
            dd_Gitem.Text = "";
            txt_gcount.Text = "";
            txt_gweight.Text = "";


        }

        private void BindGrid()
        {
            DataTable dispitem = new DataTable();

            dispitem = obj.Readgolditems();
            if (dispitem.Rows.Count > 0)
            {
                Gridgolditem.DataSource = dispitem;
                Gridgolditem.DataBind();
            }

            double gram = obj.fetchtotalamount();
            txt_totalgram.Text = Convert.ToString(gram);
            double total = obj.fetchgramamount();
            double totalamount = gram * total;
            txt_grandamount.Text = Convert.ToString(totalamount);
        }
        protected void Gridcusdisplay_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
                Session["cid"] = Convert.ToString(e.CommandArgument);
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            obj.Goldno = lbl_goldno.Text;
            obj.Cid = Convert.ToInt32(Session["cid"]);
            obj.Goldamount = Convert.ToDouble(txt_grandamount.Text);
            obj.InsertGoldloandeatils();
        }

        protected void Gridgolditem_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "Remove")
                //Session["itemid"] = Convert.ToString(e.CommandArgument);
            obj.Itemid= Convert.ToInt32(e.CommandArgument);
            obj.deleteitem();
            BindGrid();

        }

        protected void Gridgolditem_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

    }
    
}