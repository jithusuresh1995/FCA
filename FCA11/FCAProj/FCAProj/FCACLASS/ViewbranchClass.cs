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
            SqlCommand command = new SqlCommand("select  reg.Branch_id,reg.Branch_name,reg.Branch_address,"+
                "dt.Districtname,city.Cityname,reg.Branch_Zipcode,reg.Branch_phone, reg.Branch_email from[dbo].[tblBranchRegistration] "+
                "reg left outer join tblDistrict dt on reg.Branch_district = dt.D_id left outer join[dbo].[tblCity] "+
                "city on city.City_id = reg.Branch_city", con);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public DataTable Execute_Viewmanager()
        {

          
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select mgr.M_id,br.Branch_name,mgr.M_name,mgr.M_address,mgr.M_gender," +
                                    "mgr.M_dob,mgr.M_phone,mgr.M_email,mgr.M_idproof,mgr.M_proofno,mgr.M_photo "+
                                    "from tblManagerRegistration mgr left outer join tblBranchRegistration br " +
                                    "on mgr.Branch_id=br.Branch_id ", con);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }


        public DataTable Execute_ViewEmployee()
        {

            
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select emp.Emp_id,br.Branch_name,emp.E_name,emp.E_address,emp.E_gender," +
                                    "emp.E_dob,emp.E_phone,emp.E_email,emp.E_designation,emp.E_photo " +
                                    "from tblEmployeeRegistration emp left outer join tblBranchRegistration br " +
                                    "on emp.Branch_id=br.Branch_id ", con);
            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
        private int bid;

        public int Bid { get => bid; set => bid = value; }

        public DataTable Execute_Viewcustomer()
        {


            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select * from tblCustomerregistration where Branch_id=@bid ", con);
            command.Parameters.AddWithValue("@bid", bid);

            OpenConection();
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
    }
}