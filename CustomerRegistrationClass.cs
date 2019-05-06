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
        private string cphone;
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
        private int accountno;

        private string ltype;
        private double lamount;
        private int duration;
        private string lpurpose;
        private string guranter;
        private string gaddress;
        private string gphone;
        private string gidproof;
        private string gproofno;
        private int cid;
        private string paiddate;
        private string loandate;
        private double goldloanamount;

        public string Cname { get => cname; set => cname = value; }
        public string Caddress { get => caddress; set => caddress = value; }
        public string Cgender { get => cgender; set => cgender = value; }
       // public string Cdob { get => cdob; set => cdob = value; }
       // public int Cphone { get => Cphone1; set => Cphone1 = value; }
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
        public int Accountno { get => accountno; set => accountno = value; }
        public string Cphone1 { get => cphone; set => cphone = value; }
        public string Ltype { get => ltype; set => ltype = value; }
        public double Lamount { get => lamount; set => lamount = value; }
        public int Duration { get => duration; set => duration = value; }
        public string Lpurpose { get => lpurpose; set => lpurpose = value; }
        public string Guranter { get => guranter; set => guranter = value; }
        public string Gaddress { get => gaddress; set => gaddress = value; }
        public string Gphone { get => gphone; set => gphone = value; }
        public string Gidproof { get => gidproof; set => gidproof = value; }
        public string Gproofno { get => gproofno; set => gproofno = value; }
        public int Cid { get => cid; set => cid = value; }
        public string Paiddate { get => paiddate; set => paiddate = value; }
        public string Loandate { get => loandate; set => loandate = value; }
        public double Goldloanamount { get => goldloanamount; set => goldloanamount = value; }

        //public float Goldloanamount { get => goldloanamount; set => goldloanamount = value; }

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


            SqlCommand command = new SqlCommand("select count(C_id) from tblCustomerregistration ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                accountno = 1000 + count;
            }
            else
            {
                count = 1;
            }
            Type = "Cus";
            string qry1 = "insert into tblLogin values (@type,@username,@password);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@type", Type);
            cmd1.Parameters.AddWithValue("@username", cusername);
            cmd1.Parameters.AddWithValue("@password", cpassword);
            cmd1.ExecuteNonQuery();
            int loginid = fetchcustomereid();

            string qry = "insert into tblCustomerregistration "+
                    "([C_name] ,[C_addrress],[C_gender],[C_dob] ,[C_phone] ,[C_email] ,[C_district] ,[C_city]"+
                    " ,[C_idproof] ,[C_proofno] ,[C_photo] ,[C_username] ,[C_password]  ,[Branch_id],[Account_No],[Login_id])" +
                    "values (@name,@address,@gender,@dob,@phone,@email,@district,@city,@idproof,@proofno,@photo,@username,@password,@branchid,@accountno," + loginid + ");";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@branchid", branchid);
            cmd.Parameters.AddWithValue("@name", cname);
            cmd.Parameters.AddWithValue("@address", caddress);
            cmd.Parameters.AddWithValue("@gender", cgender);
            cmd.Parameters.AddWithValue("@dob", C_dob);
            cmd.Parameters.AddWithValue("@phone", Cphone1);
            cmd.Parameters.AddWithValue("@email", cemail);
            cmd.Parameters.AddWithValue("@district", district);
            cmd.Parameters.AddWithValue("@city", ccity);
            cmd.Parameters.AddWithValue("@idproof", cidproof);
            cmd.Parameters.AddWithValue("@proofno", cproofno);
            cmd.Parameters.AddWithValue("@photo", cphoto);
            cmd.Parameters.AddWithValue("@username", cusername);
            cmd.Parameters.AddWithValue("@password", cpassword);
            cmd.Parameters.AddWithValue("@accountno", accountno);

            cmd.ExecuteNonQuery();
            
        }

        public int fetchcustomereid()
        {
            OpenConection();

            //  DataTable loginid = new DataTable();
            SqlCommand command = new SqlCommand("select  max(Login_id) from tblLogin ", con);
            int loginId = 0;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
                loginId = (int)cMax;
            return loginId;


        }


        public void LoanApplication()
        {
            OpenConection();

           

            string qry = "insert into tbl_loanapplication ([Loantype] ,[Loanamount],[Duration],[Loanpurpose]," +
                "[Guranter] ,[Address] ,[Phoneno] ,[idproof],[Proofno],[C_id]) values" +
                "(@ltype,@lamt,@duration,@lpurpose,@guranter,@address,@phone,@idproof,@proofno,@cid);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@ltype", ltype);
            cmd.Parameters.AddWithValue("@lamt", lamount);
            cmd.Parameters.AddWithValue("@duration", duration);
            cmd.Parameters.AddWithValue("@lpurpose", lpurpose);
            cmd.Parameters.AddWithValue("@guranter", guranter);
            cmd.Parameters.AddWithValue("@address", gaddress);
            cmd.Parameters.AddWithValue("@phone", gphone);
            cmd.Parameters.AddWithValue("@idproof", gidproof);
            cmd.Parameters.AddWithValue("@proofno", gproofno);
            cmd.Parameters.AddWithValue("@cid", cid);

            cmd.ExecuteNonQuery();

           
        }


        public DataTable Execute_Viewloanapplication()
        {

            
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select cus.C_name,lap.Loantype,lap.Loanamount,lap.Duration," +
                                    "lap.Loanpurpose,lap.Guranter,lap.Address,lap.Phoneno,lap.idproof,lap.Proofno " +
                                    "from tbl_loanapplication lap left outer join tblCustomerregistration cus " +
                                    "on lap.C_id=cus.C_id ", con);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public DataTable ViewGoldDetails_Cus()
        {
            OpenConection();


            DataTable dispitem = new DataTable();
            SqlCommand command = new SqlCommand("select Goldno,Date,LoanAmount from tbl_Goldloan where C_id=@cid  ", con);
            command.Parameters.AddWithValue("@cid", cid);

            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(dispitem);
            CloseConnection();
            return dispitem;


        }

        

        public string fetchgoldloandate()
        {
            OpenConection();

            //  DataTable loginid = new DataTable();
            SqlCommand command = new SqlCommand("select  Date from tbl_Goldloan where C_id=@cid ", con);
            command.Parameters.AddWithValue("@cid", cid);

            string date ="blah blah test";
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            
                date = (string)cMax;
                return date;
            
            
        }


        public double fetchamount()
        {
            OpenConection();

            //  DataTable loginid = new DataTable();
            SqlCommand command = new SqlCommand("select  LoanAmount from tbl_Goldloan where C_id=@cid ", con);
            command.Parameters.AddWithValue("@cid", cid);

            double lamount = 0;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)

                lamount = (double)cMax;
            return lamount;


        }

    }
}