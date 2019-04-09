using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FCAProj.FCACLASS
{
    public class AddChitFundClass
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

        private string chitname;
        private double chitamount;
        private double installamt;
        private string chitno;
        private int tenure;
        private string details;
        private string startdate;

        public string Chitname { get => chitname; set => chitname = value; }
       // public int Chitamount { get => Chitamount1; set => Chitamount1 = value; }
        //public int Installamt { get => Installamt1; set => Installamt1 = value; }
        public string Chitno { get => chitno; set => chitno = value; }
        public int Tenure { get => tenure; set => tenure = value; }
        public string Details { get => details; set => details = value; }
        public string Startdate { get => startdate; set => startdate = value; }
        public double Chitamount1 { get => chitamount; set => chitamount = value; }
        public double Installamt1 { get => installamt; set => installamt = value; }

        public void InsertChitFund()
        {
            OpenConection();
            string qry = "insert into tblChitfund values (@chitname,@chitamount,@installamt,@chitno,@tenure,@details,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@chitname", chitname);
            cmd.Parameters.AddWithValue("@chitamount", Chitamount1);
            cmd.Parameters.AddWithValue("@installamt", Installamt1);
            cmd.Parameters.AddWithValue("@chitno", chitno);
            cmd.Parameters.AddWithValue("@tenure", tenure);
            cmd.Parameters.AddWithValue("@details", details);
            cmd.Parameters.AddWithValue("@date", startdate);
            cmd.ExecuteNonQuery();

        }

    }
}