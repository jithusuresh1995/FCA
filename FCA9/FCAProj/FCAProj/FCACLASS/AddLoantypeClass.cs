using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace FCAProj.FCACLASS
{
    public class AddLoantypeClass
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

        private string lname;
        private string details;
        private double interest;
        private double minamt;
        private double maxamt;
        private int minduration;
        private int maxduration;
        //private int mid;

        public string Lname { get => lname; set => lname = value; }
        public string Details { get => details; set => details = value; }
        public double Interest { get => interest; set => interest = value; }
        public double Minamt { get => minamt; set => minamt = value; }
        public double Maxamt { get => maxamt; set => maxamt = value; }
        public int Minduration { get => minduration; set => minduration = value; }
        public int Maxduration { get => maxduration; set => maxduration = value; }
       // public int Mid { get => mid; set => mid = value; }

        public void InsertLoantype()
        {
            OpenConection();
            string qry = "insert into tblLoantype values (@name,@ldetails,@interestrate,@minamount,@maxamount,@minduration,@maxduration);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", lname);
            cmd.Parameters.AddWithValue("@ldetails", details);
            cmd.Parameters.AddWithValue("@interestrate", interest);
            cmd.Parameters.AddWithValue("@minamount", minamt);
            cmd.Parameters.AddWithValue("@maxamount", maxamt);
            cmd.Parameters.AddWithValue("@minduration", minduration);
            cmd.Parameters.AddWithValue("@maxduration", maxduration);
           // cmd.Parameters.AddWithValue("@mid", mid);

            cmd.ExecuteNonQuery();

        }
    }
}