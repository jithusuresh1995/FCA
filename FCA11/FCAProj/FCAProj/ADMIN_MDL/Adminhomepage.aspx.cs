using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FCAProj.FCACLASS;

namespace FCAProj.ADMIN_MDL
{
    public partial class Adminhomepage : System.Web.UI.Page
    {
        LoginClass obj = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_gramamount.Visible = false;
            btn_ok.Visible = false;
            LoadData();
        }
        public void LoadData()
        {
            lbl_gramamt.Text = obj.gramrate();
        }

        protected void btn_change_Click(object sender, EventArgs e)
        {
            btn_change.Visible = false;
            txt_gramamount.Visible = true ;
            btn_ok.Visible = true;
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            btn_change.Visible = true;
            txt_gramamount.Visible = false;
            btn_ok.Visible = false;
            obj.Newgramrate = Convert.ToDouble(txt_gramamount.Text);
            obj.UpdateGramRate();
            LoadData();
        }
    }
}