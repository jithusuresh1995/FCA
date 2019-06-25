using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

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
        private int mid;

        public string Lname { get => lname; set => lname = value; }
        public string Details { get => details; set => details = value; }
        public double Interest { get => interest; set => interest = value; }
        public double Minamt { get => minamt; set => minamt = value; }
        public double Maxamt { get => maxamt; set => maxamt = value; }
        public int Minduration { get => minduration; set => minduration = value; }
        public int Maxduration { get => maxduration; set => maxduration = value; }
        public int Mid { get => mid; set => mid = value; }
        public int Lid { get => lid; set => lid = value; }

        public void InsertLoantype()
        {
            OpenConection();
            string qry = "insert into tblLoantype values (@name,@ldetails,@interestrate,@minamount,@maxamount,@minduration,@maxduration,@mid);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", lname);
            cmd.Parameters.AddWithValue("@ldetails", details);
            cmd.Parameters.AddWithValue("@interestrate", interest);
            cmd.Parameters.AddWithValue("@minamount", minamt);
            cmd.Parameters.AddWithValue("@maxamount", maxamt);
            cmd.Parameters.AddWithValue("@minduration", minduration);
            cmd.Parameters.AddWithValue("@maxduration", maxduration);
            cmd.Parameters.AddWithValue("@mid", mid);

            cmd.ExecuteNonQuery();

        }
        private int lid;
        public DataTable viewgoldloan()
        {

            //  SqlCommand command = new SqlCommand("Select * from S_Registration where name=@zip", conn);
            //   command.Parameters.AddWithValue("@zip", "india");
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("select * from tblLoantype where B_id=@bid", con);
            command.Parameters.AddWithValue("@bid", mid);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
        public DataTable loadloan()
        {

            //  SqlCommand command = new SqlCommand("Select * from S_Registration where name=@zip", conn);
            //   command.Parameters.AddWithValue("@zip", "india");
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("select * from tblLoantype where L_id=@lid", con);
            command.Parameters.AddWithValue("@lid", lid);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public DataTable UpdateloanDetails()
        {
            OpenConection();

            DataTable updatebr = new DataTable();
            SqlCommand command = new SqlCommand("update tblLoantype SET  L_name=@name,L_details=@details," +
                "L_interestrate=@rate ,L_minamount=@minamt,L_maxamount=@maxamt,L_minduration=@mindur,L_maxduration=@mandur where L_id = @lid ", con);

            command.Parameters.AddWithValue("@name", lname);
            command.Parameters.AddWithValue("@details", details);
            command.Parameters.AddWithValue("@rate", interest);
            command.Parameters.AddWithValue("@minamt", minamt );
            command.Parameters.AddWithValue("@maxamt", maxamt);
            command.Parameters.AddWithValue("@mindur", minduration);
            command.Parameters.AddWithValue("@mandur", maxduration);


            command.Parameters.AddWithValue("@lid", lid);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(updatebr);
            CloseConnection();
            return updatebr;


        }
    }
}