using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FCAProj.FCACLASS

{
    public class LoginClass
    {


        string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
        SqlConnection con;
        public void OpenConection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }
        public void CloseConnection()
        {
            con.Close();
        }

        public void ExecuteQueries(string Query_)
        {

            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }

        private string username;
        private string password;


        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
       
        public DataTable ExecuteLogin()
        {
            DataTable dtReg = new DataTable();

            OpenConection();
            //string qry = "select Login_type from tblLogin where Username='" + @username + "' and Password='" + @password + "'";
            string qry = " select lg.Login_type,reg.M_id,reg.Branch_id,emp.Emp_id,cus.C_id,emp.Branch_id as EmpBranchid from tblLogin lg left outer join " +
                "tblManagerRegistration reg on lg.Login_id = reg.Login_id left outer join "+
                "tblEmployeeRegistration emp on lg.Login_id = emp.Login_id  left outer join "+ 
                "tblCustomerRegistration cus on lg.Login_id = cus.Login_id " +
                "where lg.Username = @username and lg.Password =  @password ";
      //    ExecuteQueries(qry);
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);


            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;

        }

        public string gramrate()
        {
            OpenConection();
            SqlDataReader rd;
            string qry = " select GramAmount from tbl_gramamount;";
            SqlCommand cmd = new SqlCommand(qry, con);
            rd = cmd.ExecuteReader();
            if(rd.Read())
            {
                string s = rd.GetValue(0).ToString();
                rd.Close();
                CloseConnection();
                return s;

            }
            else
            {
                rd.Close();
                CloseConnection();
                return "";
            }

        }

        private double newgramrate;
        private string date;
       
        public double Newgramrate { get => newgramrate; set => newgramrate = value; }
        public string Date { get => date; set => date = value; }
        public string Uname { get => uname; set => uname = value; }
        public int Logid { get => logid; set => logid = value; }
        public string New_pswd { get => new_pswd; set => new_pswd = value; }
        public int Cid { get => cid; set => cid = value; }
        public int Eid { get => eid; set => eid = value; }
        public int Mid { get => mid; set => mid = value; }

        public void UpdateGramRate()
        {
            OpenConection();
            date = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime gdate = Convert.ToDateTime(date);
            string qry = "insert into tbl_gramamount  values (@newgram,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@newgram", newgramrate);
            cmd.Parameters.AddWithValue("@date",date );
            cmd.ExecuteNonQuery();
        }
        private string uname;
        public DataTable Forgotpassword()
        {
            DataTable dtReg = new DataTable();

            OpenConection();
            string qry = " select lg.Login_type,lg.Username,lg.Password,reg.M_name, reg.M_email,reg.Branch_id,emp.E_name,emp.E_email,cus.C_name,cus.C_email from tblLogin lg left outer join " +
                "tblManagerRegistration reg on lg.Login_id = reg.Login_id left outer join " +
                "tblEmployeeRegistration emp on lg.Login_id = emp.Login_id  left outer join " +
                "tblCustomerRegistration cus on lg.Login_id = cus.Login_id " +
                "where lg.Username = @username ";
            
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@username", uname);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;

        }
        private int logid;
        private string new_pswd;
        //private string uname;
        private int cid;
        private int eid;
        private int mid;

        public void ChangePassword()
        {
            OpenConection();
            string qry = "update tblLogin set Password=@spassword where Username=@uname ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@logid", logid);
            cmd.Parameters.AddWithValue("@spassword", New_pswd);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public void ChangePasswordcus()
        {
            OpenConection();
            string qry = "update tblCustomerregistration set C_password=@spassword where C_id=@cid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@logid", logid);
            cmd.Parameters.AddWithValue("@spassword", New_pswd);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public void ChangePasswordman()
        {
            OpenConection();
            string qry = "update tblLogin set M_password=@spassword where M_id=@mid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@logid", logid);
            cmd.Parameters.AddWithValue("@spassword", New_pswd);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@mid", mid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public void ChangePasswordemp()
        {
            OpenConection();
            string qry = "update tblEmployeeRegistration set E_password=@spassword where Emp_id=@eid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@logid", logid);
            cmd.Parameters.AddWithValue("@spassword", New_pswd);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@eid", eid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

    }
}