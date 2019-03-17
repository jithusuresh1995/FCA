using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace FCAProj.FCACLASS
{
    public class BranchRegistrationClass
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
            // Whenever you want to execute a query, like an insert, update or delete
            //query then simply call this function 
            //using the object of a class and pass your query to the function
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }

        private string bname;
        private string baddress;
        private string bdistrict;
        private string bcity;
        private string bzipcode;
        private string bdate;
        private string bphone;
        private string bemail;
        private string city;

        public string Bname { get => bname; set => bname = value; }
        public string Baddress { get => baddress; set => baddress = value; }
        public string Bdistrict { get => bdistrict; set => bdistrict = value; }
        public string Bcity { get => bcity; set => bcity = value; }
        public string Bzipcode { get => bzipcode; set => bzipcode = value; }
        public string Bemail { get => bemail; set => bemail = value; }
       // public DateTime Bdate { get => Bdate1; set => Bdate1 = value; }
        public string City { get => city; set => city = value; }
        public string Bphone { get => bphone; set => bphone = value; }
        public string Bdate1 { get => bdate; set => bdate = value; }

        public void branchregistration()
        {
            OpenConection();
            string qry = "insert into tblBranchRegistration values ('" + bname + "','" + baddress + "','" + bdistrict + "','" + bcity + "','" + bzipcode + "','" + Bdate1 + "','" + Bphone + "','" + bemail + "');";
            ExecuteQueries(qry);
        }

        public DataTable ExecuteSelectQueries()
        {
            OpenConection();

            DataTable dispcity = new DataTable();
            SqlCommand command = new SqlCommand("select * from tblCity where district_id='" + city + "' ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispcity);
            CloseConnection();
            return dispcity;


        }
    }
}