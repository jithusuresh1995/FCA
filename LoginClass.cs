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


        public DataTable ExecuteSelectQueries()
        {
            OpenConection();
            string qry = "select Login_type from tblLogin where Username='" + @username + "' and Password='" + @password + "'";
            ExecuteQueries(qry);
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@uname", username);
            cmd.Parameters.AddWithValue("@password", password);
            DataTable dtReg = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);
            
            CloseConnection();
            return dtReg;
        }


    }
}