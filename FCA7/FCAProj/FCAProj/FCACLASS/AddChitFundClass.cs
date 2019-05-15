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


        private int installmntno;
        // private string sdate;
        // private string edate;
        private string opendate;
        private string closedate;
        private int chitid;
        private int cusid;
        

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
        public int Installmntno { get => installmntno; set => installmntno = value; }
       // public string Sdate { get => sdate; set => sdate = value; }
        //public string Edate { get => edate; set => edate = value; }
        public int Chitid { get => chitid; set => chitid = value; }
        public string Opendate { get => opendate; set => opendate = value; }
        public string Closedate { get => closedate; set => closedate = value; }
        public int Cusid { get => cusid; set => cusid = value; }
        public int Bidamount { get => bidamount; set => bidamount = value; }
        public int Binstallmentno { get => binstallmentno; set => binstallmentno = value; }
        public int Bchitid { get => bchitid; set => bchitid = value; }
        public int Bcid { get => bcid; set => bcid = value; }
        public int Chitnumber { get => chitnumber; set => chitnumber = value; }
        public int Installmentnum { get => installmentnum; set => installmentnum = value; }
        public int Insatllmentamount { get => insatllmentamount; set => insatllmentamount = value; }

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

        public DataTable ViewChitsDetails()
        {


            OpenConection();

            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select ch.Chit_no ,ch.Chit_amount,c.Date,cus.Account_No,cus.C_name from tbl_chitmembers c " +
                "left outer  join  tblChitfund ch  on c.Chit_No=ch.Chitfund_id left outer join tblCustomerregistration cus on " +
                "cus.C_id=c.C_id  and cus.Branch_id=@branchid  ", con);
            command.Parameters.AddWithValue("@branchid", branchid);
            //command.Parameters.AddWithValue("@accountName", accountName);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public void InsertChitAuction()
        {
            OpenConection();

            string qry = "insert into tbl_Chitauction values (@installmntno,@sdate,@edate,@chitid,'Open');";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@installmntno", installmntno);
            cmd.Parameters.AddWithValue("@sdate", opendate);
            cmd.Parameters.AddWithValue("@edate", closedate);
            cmd.Parameters.AddWithValue("@chitid", chitid);

            cmd.ExecuteNonQuery();

        }

        public int InstallNum()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select MAX(Installment_no) from tbl_Chitauction where Chitfund_id=@chit_id ", con);
            command.Parameters.AddWithValue("@chit_id", chitid);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count = count + 1;
                return count;
            }
            else
            {
                count = 1;
                return count;
            }

        }


        public DataTable CustomerChitsView()
        {


            OpenConection();

            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select ch.Chit_no ,ch.Chit_amount,ch.Chit_installment, ch.chit_Stardate,aut.Status,aut.Installment_no from tblChitfund ch, tbl_Chitauction aut,  tbl_chitmembers c where ch.Chitfund_id = aut.Chitfund_id and ch.Chitfund_id = c.Chit_No and c.C_id=@cid  ", con);
            command.Parameters.AddWithValue("@cid", cusid);
            //command.Parameters.AddWithValue("@accountName", accountName);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
        private int bidamount;
        private int binstallmentno;
        private int bchitid;
        private int bcid;
        public void InsertBidamount()
        {
            OpenConection();

            string qry = "insert into tbl_bidamount values (@bidamount,@binstall,@bchitid,@bcid);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@bidamount", bidamount);
            cmd.Parameters.AddWithValue("@binstall", binstallmentno);
            cmd.Parameters.AddWithValue("@bchitid", bchitid);
            cmd.Parameters.AddWithValue("@bcid", bcid);

            cmd.ExecuteNonQuery();

        }


        public int BidClearness()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(Installment_no) from tbl_bidamount where Installment_no=@install and Chitfund_id=@chitid and C_id=@cid", con);
            command.Parameters.AddWithValue("@install", binstallmentno);
            command.Parameters.AddWithValue("@chitid", bchitid);
            command.Parameters.AddWithValue("@cid", bcid);
            int count=0;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                return count;
            }
            else
            {
                
                return count;
            }

        }

        private int chitnumber;


        public int ChitInstallNum()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select MAX(installmentnum) from tbl_chitInstallment where Chit_no=@chitno ", con);
            command.Parameters.AddWithValue("@chitno", chitnumber);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count = count + 1;
                return count;
            }
            else
            {
                count = 1;
                return count;
            }

        }

        public DataTable readinstallmentamount()
        {
            OpenConection();

            DataTable cus = new DataTable();
            SqlCommand command = new SqlCommand("select Chit_installment from tblChitfund where Chit_no=@chitno ", con);
            command.Parameters.AddWithValue("@chitno", chitnumber);

            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(cus);
            CloseConnection();
            return cus;


        }
        private int installmentnum;
        private int insatllmentamount;

        public void InsertChitInsatallment()
        {
            OpenConection();

            string qry = "insert into tbl_chitInstallment values (@chitno,@installno,@installamt,@cid);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@chitno", chitnumber);
            cmd.Parameters.AddWithValue("@installno",installmentnum );
            cmd.Parameters.AddWithValue("@installamt", insatllmentamount);
            cmd.Parameters.AddWithValue("@cid", bcid);

            cmd.ExecuteNonQuery();

        }
    }
}

