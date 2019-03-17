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

        public void InsertStudent_Parameter()
        {
            OpenConection();
           //SqlCommand command = new SqlCommand("Select max(RNo) from tblManagerRegistration ", con);
            //int rno;
           // object cMax = command.ExecuteScalar();
            //if (cMax != DBNull.Value)
            {
           //     rno = (int)cMax;
            //    rno++;
            }
            //else
            //{
            //    rno = 1;                                                  
            //}


            string qry = "insert into tblManagerRegistration values (@name,@address,@gender,@dob,@phone,@email,@idproof,@proofno,@photo,@hqulification,@experience);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", mname);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@address", maddress);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@gender", mgender);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@dob", mdob);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@phone", mphone);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@email", memail);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@idproof", midproof);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@proofno", midno);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@photo", mphoto);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@hqulification", mquali);
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@experience", mexperience);
            cmd.ExecuteNonQuery();
            //ExecuteQueries(qry);

        }

        public DataTable ExecuteSelectQueries()
        {
            OpenConection();

            DataTable dispbname = new DataTable();
            SqlCommand command = new SqlCommand("select  Branch_name from tblBranchRegistration ", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispbname);
            CloseConnection();
            return dispbname;


        }

    }
}