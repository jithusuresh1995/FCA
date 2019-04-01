using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FCAProj.FCACLASS
{
    public class ViewbranchClass
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

        public DataTable Execute_Viewbranch()
        {

            //  SqlCommand command = new SqlCommand("Select * from S_Registration where name=@zip", conn);
            //   command.Parameters.AddWithValue("@zip", "india");
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select Branch_name,Branch_address,Branch_district,Branch_city,Branch_Zipcode,Branch_phone,Branch_email from tblBranchRegistration ", con);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public DataTable Execute_Viewmanager()
        {

            //  SqlCommand command = new SqlCommand("Select * from S_Registration where name=@zip", conn);
            //   command.Parameters.AddWithValue("@zip", "india");
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select Branch_id,M_name,M_address,M_gender,M_dob,M_phone,M_email,M_idproof,M_proofno,M_photo from tblManagerRegistration ", con);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
    }
}