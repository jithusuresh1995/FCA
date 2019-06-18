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

    }
}