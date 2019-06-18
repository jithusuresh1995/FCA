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
    public partial class Viewgoldloan : System.Web.UI.Page
    {
        EmployeeRegistrationClass obj = new EmployeeRegistrationClass();
        CustomerRegistrationClass obj1 = new CustomerRegistrationClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string bid = Session["BranchId"].ToString();
                obj.Branchid = Convert.ToInt32(bid);
                DataTable dtReg = new DataTable();
                // myproject.classes.staff sObj = new myproject.classes.staff();
                dtReg = obj.Execute_Viewgolddetails();
                if (dtReg.Rows.Count > 0)
                {
                    Gridviewloan.DataSource = dtReg;
                    Gridviewloan.DataBind();
                }
                Label1.Visible = false;
            }

            txt_Emppayamount.Visible = false;
            lbl_amt_to_pay.Visible = false;
            lbl_pay.Visible = false;
            lbl_payamt.Visible = false;
            btn_Epay.Visible = false;
        }

        protected void Gridviewloan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Items")
            {
                Label1.Visible = true;
                obj.Goldid = Convert.ToInt32(e.CommandArgument);
                DataTable dispitem = new DataTable();

                dispitem = obj.displaygolditem();
                if (dispitem.Rows.Count > 0)
                {
                    Gridviewitem.DataSource = dispitem;
                    Gridviewitem.DataBind();
                }
            }

            

            if (e.CommandName == "Payment")
            {
                
                Session["goldno"] = Convert.ToString(e.CommandArgument);
                obj1.Goldno = Session["goldno"].ToString();
                DataTable interest = new DataTable();
                interest = obj1.Viewinterstdetails();
                if (interest.Rows.Count > 0)
                {
                    Griduserpayment.DataSource = interest;
                    Griduserpayment.DataBind();
                    //txt_paidamount.Text = Convert.ToString(dtReg.Rows[0][""]);
                }

                txt_Emppayamount.Visible = true;
                lbl_amt_to_pay.Visible = true;
                lbl_pay.Visible = true;
                lbl_payamt.Visible = true;
                btn_Epay.Visible = true;
                obj1.Cid = Convert.ToInt32(Session["Cid"]);
                obj1.Paiddate = System.DateTime.Now.ToString("dd/MM/yyyy");
                string pdate = obj1.Paiddate;

                DataTable dtReg = new DataTable();
                dtReg = obj1.fetchloandata();
                if (dtReg.Rows.Count > 0)
                {

                    obj1.Loandate = Convert.ToString(dtReg.Rows[0]["Date"]);
                    obj1.Goldloanamount = Convert.ToDouble(dtReg.Rows[0]["Creditamount"]);
                }

                string ldate = obj1.Loandate;
                DateTime loandate = Convert.ToDateTime(ldate);
                DateTime presentdate = Convert.ToDateTime(pdate);
                double n = (presentdate - loandate).TotalDays;
                double amt = obj1.Goldloanamount;
                double interestamount = (amt * n * 5) / (365 * 100);
                double amount = amt + interestamount;
                double amt1 = Math.Round(amount, 2);
                lbl_amt_to_pay.Text = Convert.ToString(amt1);

            }
        }

        protected void btn_Epay_Click(object sender, EventArgs e)
        {
            obj1.Goldloanamount = Convert.ToDouble(lbl_amt_to_pay.Text);
            double gamount = obj1.Goldloanamount;
            obj1.Paidamount = Convert.ToDouble(txt_Emppayamount.Text);
            double pamount = obj1.Paidamount;
            obj1.Creditamount = gamount - pamount;
            obj1.Goldno = Session["goldno"].ToString();
            obj1.InsertgoldInterest();

            Griduserpayment.Visible = false;
        }

        protected void Gridviewitem_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            //Gridviewloan.DataSource = null;
            //Gridviewloan.DataBind();
            DataTable dispcus = new DataTable();

            obj.AccountName = txt_name.Text;
            obj.Branchid = Convert.ToInt32(Session["BranchId"]);
            dispcus = obj.Viewgolddetails_cus();
            if (dispcus.Rows.Count > 0)
            {
                Gridviewloan.DataSource = dispcus;
                Gridviewloan.DataBind();
            }

            txt_name.Text = "";
            
            


        }

        protected void Griduserpayment_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    
}