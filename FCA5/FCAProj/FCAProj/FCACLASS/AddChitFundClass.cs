using System;
using System.Collections.Generic;
using System.Data;
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

        //private string chitname;
        private double chitamount;
        private double installamt;
        private string chitno;
        //private int chitnum;
        private int tenure;
        private string details;
        private string startdate;
        //private int mid;
        private int branchid;
        private int cid;
        private string date;
        private int Cuschitnumber;

        //public string Chitname { get => chitname; set => chitname = value; }
       // public int Chitamount { get => Chitamount1; set => Chitamount1 = value; }
        //public int Installamt { get => Installamt1; set => Installamt1 = value; }
        public string Chitno { get => chitno; set => chitno = value; }
        public int Tenure { get => tenure; set => tenure = value; }
        public string Details { get => details; set => details = value; }
        public string Startdate { get => startdate; set => startdate = value; }
        public double Chitamount1 { get => chitamount; set => chitamount = value; }
        public double Installamt1 { get => installamt; set => installamt = value; }
        public int Branchid { get => branchid; set => branchid = value; }
        public int Cid { get => cid; set => cid = value; }
        public string Date { get => date; set => date = value; }
        public int Cuschitnumber1 { get => Cuschitnumber; set => Cuschitnumber = value; }

        // public int Chitnum { get => chitnum; set => chitnum = value; }

        //public int Mid { get => mid; set => mid = value; }

        public void GenerateAutochitNo()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(Chitfund_id) from tblChitfund ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                chitno = "1000" + count;
            }
            else
            {
                count = 1;
                chitno = "1000" + count;
            }

        }

        public void InsertChitFund()
        {
            OpenConection();
            
            string qry = "insert into tblChitfund values (@chitamount,@installamt,@chitno,@tenure,@details,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            //cmd.Parameters.AddWithValue("@chitname", chitname);
            cmd.Parameters.AddWithValue("@chitamount", Chitamount1);
            cmd.Parameters.AddWithValue("@installamt", Installamt1);
            cmd.Parameters.AddWithValue("@chitno", chitno);
            cmd.Parameters.AddWithValue("@tenure", tenure);
            cmd.Parameters.AddWithValue("@details", details);
            cmd.Parameters.AddWithValue("@date", startdate);
           // cmd.Parameters.AddWithValue("@mid", mid);
            cmd.ExecuteNonQuery();

        }


        public DataTable ReadchitNumber()
        {
            OpenConection();

            DataTable chitno = new DataTable();
            SqlCommand command = new SqlCommand("select Chitfund_id, Chit_no from tblChitfund ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(chitno);
            CloseConnection();
            return chitno;


        }

        public DataTable ReadCustomer()
        {
            OpenConection();

            DataTable cus = new DataTable();
            SqlCommand command = new SqlCommand("select C_id,C_name from tblCustomerregistration where Branch_id=@branchid ", con);
            command.Parameters.AddWithValue("@branchid", branchid);

            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(cus);
            CloseConnection();
            return cus;


        }


        public void InsertChitCustomer()
        {
            OpenConection();

            string qry = "insert into tbl_chitmembers values (@chitno,@cid,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@chitno", Cuschitnumber1);
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();

        }
    }

}