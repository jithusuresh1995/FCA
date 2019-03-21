using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FCAProj.FCACLASS
{
    public class ManagerRegistrationClass
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


        private string mname;
        private string maddress;
        private string mgender;
        private string mdob;
        private string mphone;
        private string memail;
        private string midproof;
        private string midno;
        private string mphoto;
        private string mquali;
        private string mexperience;
        private int branchid;
        private string username;
        private string type;
        

        

        public string Mname { get => mname; set => mname = value; }
       

        public string Mphone { get => mphone; set => mphone = value; }
        public string Memail { get => memail; set => memail = value; }
        public string Midproof { get => midproof; set => midproof = value; }
        public string Midno { get => midno; set => midno = value; }
        public string Mphoto { get => mphoto; set => mphoto = value; }
        public string Mquali { get => mquali; set => mquali = value; }
        public string Mexperience { get => mexperience; set => mexperience = value; }
        public string Mgender { get => mgender; set => mgender = value; }
        public string Maddress { get => maddress; set => maddress = value; }
        public string Mdob { get => mdob; set => mdob = value; }
        public int Branchid { get => branchid; set => branchid = value; }
        public string Useraname { get => username; set => username = value; }
        public string Type { get => type; set => type = value; }
        

        public void InsertManager_Parameter()
        {
            OpenConection();

            SqlCommand command = new SqlCommand("select count(M_name) from tblManagerRegistration ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                username = "mngr" + count;
            }
            else
            {
                count = 1;
            }
            

            string qry = "insert into tblManagerRegistration values (@branchid,@name,@address,@gender,@dob,@phone,@email,@idproof,@proofno,@photo,@hqulification,@experience,@username,@password);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@branchid",branchid);
            cmd.Parameters.AddWithValue("@name", mname);
            cmd.Parameters.AddWithValue("@address", maddress);
            cmd.Parameters.AddWithValue("@gender", mgender);
            cmd.Parameters.AddWithValue("@dob", mdob);
            cmd.Parameters.AddWithValue("@phone", mphone);
            cmd.Parameters.AddWithValue("@email", memail);
            cmd.Parameters.AddWithValue("@idproof", midproof);
            cmd.Parameters.AddWithValue("@proofno", midno); 
            cmd.Parameters.AddWithValue("@photo", mphoto);
            cmd.Parameters.AddWithValue("@hqulification", mquali);
            cmd.Parameters.AddWithValue("@experience", mexperience);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", username);
            
            cmd.ExecuteNonQuery();
            
            //ExecuteQueries(qry);

        }
        public void Read_Id()
        {
            OpenConection();

            
            type = "Mgr";
            string qry1 = "insert into tblLogin values (@type,@username,@password);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@type", type);
            cmd1.Parameters.AddWithValue("@username", username);
            cmd1.Parameters.AddWithValue("@password", username);
            cmd1.ExecuteNonQuery();
        }
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

    }
}