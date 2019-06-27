using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.EMPLOYEE_MDL
{
    public partial class ViewbidDetails : System.Web.UI.Page
    {
        AddChitFundClass obj = new AddChitFundClass();
        DataTable dtReg = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Branchid = Convert.ToInt32(Session["Branchid"]);
                DataTable chitno = new DataTable();

                chitno = obj.ReadchitNumber();
                if (chitno.Rows.Count > 0) 
                {

                    dd_chitnum.DataSource = chitno;
                    dd_chitnum.DataTextField = "Chit_no";
                    dd_chitnum.DataValueField = "Chitfund_id";
                    dd_chitnum.DataBind();
                    dd_chitnum.Items.Insert(0, new ListItem("--Select--", "0"));
                }

            }
        }

        protected void btn_select_Click(object sender, EventArgs e)
        {

            // myproject.classes.staff sObj = new myproject.classes.staff();
            obj.Branchid = Convert.ToInt32(Session["Branchid"]);
            obj.Insnum = Convert.ToInt32(dd_chitnum.SelectedItem.ToString());
            obj.Instno = Convert.ToInt32(dd_chitinstall.SelectedValue.ToString());
            int ins = Convert.ToInt32(dd_chitinstall.SelectedValue.ToString());
            // myproject.classes.staff sObj = new myproject.classes.staff();
            dtReg = obj.Viewbid();
            if (dtReg.Rows.Count > 0)
            {
                 obj.Insnum = Convert.ToInt32(dtReg.Rows[0]["Chitfund_id"].ToString());
                 obj.Instno = Convert.ToInt32(dtReg.Rows[0]["Installment_no"].ToString());
                 obj.Cusid = Convert.ToInt32(dtReg.Rows[0]["C_id"].ToString());
                string name = dtReg.Rows[0]["C_name"].ToString();

                for(int i = 1; i < dtReg.Rows.Count; i++)
                {
                    using (StringWriter sw = new StringWriter())
                    {
                        using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                        {
                            //DetailsView1.RenderControl(hw);
                            StringReader sr = new StringReader(sw.ToString());
                            MailMessage msg1 = new MailMessage();
                            msg1.From = new MailAddress("jithu384710@gmail.com");
                            msg1.To.Add(dtReg.Rows[i]["C_email"].ToString());
                            msg1.Subject = ins+ "Auction Grand";
                            msg1.Body = ins+"th Auction Granded to Mr/Mrs/Ms "+name+". Dont worry! Better Luck Next Time";
                            msg1.IsBodyHtml = true;

                            SmtpClient smt = new SmtpClient();
                            smt.Host = "smtp.gmail.com";
                            System.Net.NetworkCredential ntwd = new NetworkCredential();
                            ntwd.UserName = "jithu384710@gmail.com";//Your Email ID  
                            ntwd.Password = "jithu1995"; //   
                            smt.UseDefaultCredentials = true;
                            smt.Credentials = ntwd;
                            smt.Port = 587;
                            smt.EnableSsl = true;
                            smt.Send(msg1);
                            // lblMessage.Text = "Email Sent Successfully";  
                            // lblMessage.ForeColor = System.Drawing.Color.ForestGreen;  
                            
                        }
                    }
                }





                
                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                    {
                        //DetailsView1.RenderControl(hw);
                        StringReader sr = new StringReader(sw.ToString());
                        MailMessage msg1 = new MailMessage();
                        msg1.From = new MailAddress("jithu384710@gmail.com");
                        msg1.To.Add(dtReg.Rows[0]["C_email"].ToString());
                        msg1.Subject = ins + "Auction Grand";
                        msg1.Body = "Congrats " + "Mr/Mrs/Ms " + name + "You owned the "+ins+" Auction";
                        msg1.IsBodyHtml = true;

                        SmtpClient smt = new SmtpClient();
                        smt.Host = "smtp.gmail.com";
                        System.Net.NetworkCredential ntwd = new NetworkCredential();
                        ntwd.UserName = "jithu384710@gmail.com";//Your Email ID  
                        ntwd.Password = "jithu1995"; //   
                        smt.UseDefaultCredentials = true;
                        smt.Credentials = ntwd;
                        smt.Port = 587;
                        smt.EnableSsl = true;
                        smt.Send(msg1);
                        // lblMessage.Text = "Email Sent Successfully";  
                        // lblMessage.ForeColor = System.Drawing.Color.ForestGreen;  
                        
                    }
                }


                obj.GrandAuction();
                Response.Write("<script>alert('Auction Granded to "+name+"')</script>");
            }
           
        }

        protected void dd_chitnum_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.Insnum = Convert.ToInt32(dd_chitnum.SelectedItem.ToString());
            DataTable num = new DataTable();

            num = obj.ReadinstallNo();
            if (num.Rows.Count > 0)
            {
                dd_chitinstall.DataSource = num;
                dd_chitinstall.DataTextField = "Installment_no";
                dd_chitinstall.DataValueField = "Installment_no";
                dd_chitinstall.DataBind();
                dd_chitinstall.Items.Insert(0, new ListItem("--Select--", "0"));
            }
        }

        protected void dd_chitinstall_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.Branchid = Convert.ToInt32(Session["Branchid"]);
            obj.Insnum = Convert.ToInt32(dd_chitnum.SelectedItem.ToString());
            obj.Instno = Convert.ToInt32(dd_chitinstall.SelectedValue.ToString());
            
            // myproject.classes.staff sObj = new myproject.classes.staff();
            dtReg = obj.Viewbid();
            if (dtReg.Rows.Count > 0)
            {
                GridViewbid.DataSource = dtReg;
                GridViewbid.DataBind();
                btn_select.Visible = true;
            }
        }
    }
}