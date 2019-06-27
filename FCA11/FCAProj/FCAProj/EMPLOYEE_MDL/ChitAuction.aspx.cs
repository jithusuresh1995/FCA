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
            string cno= dd_Chitno.SelectedItem.ToString();
            obj.Installmntno = Convert.ToInt32(txt_installno.Text);
            int no = Convert.ToInt32(txt_installno.Text); 
            string sd= txt_startdate.Text.ToString();
            string st = Convert.ToDateTime(txt_stime.Text).ToString("hh:mm:ss tt");
            obj.Opendate = sd +" "+ st;
            string s= sd + " " + st;
            string ed = txt_closedate.Text.ToString();
            string et = Convert.ToDateTime(txt_ctime.Text).ToString("hh:mm:ss tt");
            obj.Closedate = ed +" "+ et;
            string c= ed + " " + et;
            obj.InsertChitAuction();
            DataTable dtReg = new DataTable();
            dtReg = obj.getcusemail();
            if (dtReg.Rows.Count > 0)
            {
                

                for (int i = 0; i < dtReg.Rows.Count; i++)
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
                            msg1.Subject = no +"Auction Opening";
                            msg1.Body = "Chit number" +cno+ " " +no+"th Auction is opening. Starting from "+s+ "to" +c ;
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
            }

                Response.Write("<script>alert('Auction opened')</script>");
            txt_installno.Text = "";
            txt_closedate.Text = "";
            txt_ctime.Text = "";
            txt_startdate.Text = "";
            txt_stime.Text  = "";
            dd_Chitno.ClearSelection();

        }

        protected void dd_Chitno_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            obj.Chitid = Convert.ToInt32(dd_Chitno.SelectedValue);
            txt_installno.Text = obj.InstallNum().ToString();

        }
    }
}