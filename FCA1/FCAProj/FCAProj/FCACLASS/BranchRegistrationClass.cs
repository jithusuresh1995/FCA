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
        private int bid;

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
        public int Bid { get => bid; set => bid = value; }

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


        public DataTable LoadBranchDetails()
        {
            OpenConection();

            DataTable dispBr = new DataTable();
            SqlCommand command = new SqlCommand("select  * from tblBranchRegistration where Branch_id = @bid ", con);
            command.Parameters.AddWithValue("@bid", bid);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispBr);
            CloseConnection();
            return dispBr;


        }


        public DataTable UpdateBranchDetails()
        {
            OpenConection();

            DataTable updatebr = new DataTable();
            SqlCommand command = new SqlCommand("update tblBranchRegistration SET  Branch_name=@name,Branch_address=@address," +
                "Branch_district=@district,Branch_city=@city,Branch_Zipcode=@zipcode,Branch_date=@date,Branch_phone=@phone," +
               " Branch_email=@email where Branch_id = @bid ", con);
            
            command.Parameters.AddWithValue("@name", bname);
            command.Parameters.AddWithValue("@address", baddress);
            command.Parameters.AddWithValue("@district", bdistrict);
            command.Parameters.AddWithValue("@city", bcity);
            command.Parameters.AddWithValue("@zipcode", bzipcode);
            command.Parameters.AddWithValue("@date", bdate);
            command.Parameters.AddWithValue("@phone", bphone);
            command.Parameters.AddWithValue("@email", bemail);
            command.Parameters.AddWithValue("@bid", bid);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(updatebr);
            CloseConnection();
            return updatebr;


        }
    }
}