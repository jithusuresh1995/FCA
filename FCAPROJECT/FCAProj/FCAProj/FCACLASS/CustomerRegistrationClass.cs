using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FCAProj.FCACLASS
{
    public class CustomerRegistrationClass
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

        private string cname;
        private string caddress;
        private string cgender;
        private string c_dob;
        private int cphone;
        private string cemail;
        private string cidproof;
        private string cproofno;
        private string cphoto;
        private string cusername;
        private string cpassword;
        private string city;
        private string district;
        private string ccity;
        private int branchid;
        private string type;
       

        public string Cname { get => cname; set => cname = value; }
        public string Caddress { get => caddress; set => caddress = value; }
        public string Cgender { get => cgender; set => cgender = value; }
       // public string Cdob { get => cdob; set => cdob = value; }
        public int Cphone { get => cphone; set => cphone = value; }
        public string Cemail { get => cemail; set => cemail = value; }
        public string Cidproof { get => cidproof; set => cidproof = value; }
        public string Cproofno { get => cproofno; set => cproofno = value; }
        public string Cphoto { get => cphoto; set => cphoto = value; }
        public string Cusername { get => cusername; set => cusername = value; }
        public string Cpassword { get => cpassword; set => cpassword = value; }
        public string City { get => city; set => city = value; }
        public string Ccity { get => ccity; set => ccity = value; }
        public string District { get => district; set => district = value; }
        public int Branchid { get => branchid; set => branchid = value; }
        public string Type { get => type; set => type = value; }
        public string C_dob { get => c_dob; set => c_dob = value; }

        public DataTable ExecuteSelectQueries()
        {
            OpenConection();

            DataTable dispbname = new DataTable();
            SqlCommand command = new SqlCommand("select  Branch_id,Branch_name from tblBranchRegistration ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispbname);
            CloseConnection();
            return dispbname;


        }

        public DataTable ExecuteSelectQueries1()
        {
            OpenConection();

            DataTable dispcity = new DataTable();
            SqlCommand command = new SqlCommand("select * from tblCity where district_id='" + city + "' ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispcity);
            CloseConnection();
            return dispcity;


        }


        public void Insertcustomer()
        {
            OpenConection();
            string qry = "insert into tblCustomerregistration "+
                    "([C_name] ,[C_addrress],[C_gender],[C_dob] ,[C_phone] ,[C_email] ,[C_district] ,[C_city]"+
                    " ,[C_idproof] ,[C_proofno] ,[C_photo] ,[C_username] ,[C_password]  ,[Branch_id])"+
                    "values (@name,@address,@gender,@dob,@phone,@email,@district,@city,@idproof,@proofno,@photo,@username,@password,@branchid);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@branchid", branchid);
            cmd.Parameters.AddWithValue("@name", cname);
            cmd.Parameters.AddWithValue("@address", caddress);
            cmd.Parameters.AddWithValue("@gender", cgender);
            cmd.Parameters.AddWithValue("@dob", C_dob);
            cmd.Parameters.AddWithValue("@phone", cphone);
            cmd.Parameters.AddWithValue("@email", cemail);
            cmd.Parameters.AddWithValue("@district", district);
            cmd.Parameters.AddWithValue("@city", ccity);
            cmd.Parameters.AddWithValue("@idproof", cidproof);
            cmd.Parameters.AddWithValue("@proofno", cproofno);
            cmd.Parameters.AddWithValue("@photo", cphoto);
            cmd.Parameters.AddWithValue("@username", cusername);
            cmd.Parameters.AddWithValue("@password", cpassword);

            cmd.ExecuteNonQuery();
            Type = "Cus";
            string qry1 = "insert into tblLogin values (@type,@username,@password);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@type", Type);
            cmd1.Parameters.AddWithValue("@username", cusername);
            cmd1.Parameters.AddWithValue("@password", cpassword);
            cmd1.ExecuteNonQuery();
        }
    }
}