using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FCAProj.FCACLASS
{
    public class EmployeeRegistrationClass
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



        private string ename;
        private string eaddress;
        private string egender;
        private string edob;
        private string ephone;
        private string eemail;
        private string emaritalstatus;
        private string ejoindate;
        private string edesignation;
        private string ephoto;
        private int branchid;
        private string username;
        private string type;
        private int eid;

        public string Ename { get => ename; set => ename = value; }
        public string Eaddress { get => eaddress; set => eaddress = value; }
        public string Egender { get => egender; set => egender = value; }
        public string Edob { get => edob; set => edob = value; }
        public string Ephone { get => ephone; set => ephone = value; }
        public string Eemail { get => eemail; set => eemail = value; }
        public string Emaritalstatus { get => emaritalstatus; set => emaritalstatus = value; }
        public string Ejoindate { get => ejoindate; set => ejoindate = value; }
        public string Edesignation { get => edesignation; set => edesignation = value; }
        public string Ephoto { get => ephoto; set => ephoto = value; }
        public int Branchid { get => branchid; set => branchid = value; }
        public string Username { get => username; set => username = value; }
        public string Type { get => type; set => type = value; }
        public int Eid { get => eid; set => eid = value; }

        public void InsertEmployee_Parameter()
        {
            OpenConection();

            SqlCommand command = new SqlCommand("select count(E_name) from tblEmployeeRegistration ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                Username = "Emp" + count;
            }
            else
            {
                count = 1;
            }


          /*  string qry = "insert into tblEmployeeRegistration ([Branch_id] ,[E_name] ,[E_address] ,[E_gender] ,[E_dob] "+
                        " ,[E_phone]  ,[E_email] ,[E_mstatus] ,[E_designation] ,[E_photo] ,[E_joinDate]   ,[E_username] "+
                        " ,[E_password]) values (@branchid,@name,@address,@gender,@dob,@phone,@email,@mstatus,@designation,"+
                        " @photo,@joindate,@username,@password);";*/



            string qry = "insert into tblEmployeeRegistration ([Branch_id] ,[E_name] ,[E_address] ,[E_gender] ,[E_dob] " +
                       " ,[E_phone]  ,[E_email] ,[E_mstatus] ,[E_designation]  ,[E_photo],[E_joinDate]   ,[E_username] " +
                       " ,[E_password]) values (@branchid,@name,@address,@gender,@dob,@phone,@email,@mstatus,@designation,@photo,@joindate,@username,@password);";

            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@branchid", branchid);
            cmd.Parameters.AddWithValue("@name", ename);
            cmd.Parameters.AddWithValue("@address", eaddress);
            cmd.Parameters.AddWithValue("@gender", egender);
            cmd.Parameters.AddWithValue("@dob", edob);
            cmd.Parameters.AddWithValue("@phone", ephone);
            cmd.Parameters.AddWithValue("@email", eemail);
            cmd.Parameters.AddWithValue("@mstatus", emaritalstatus);
            cmd.Parameters.AddWithValue("@designation", edesignation);
            cmd.Parameters.AddWithValue("@photo", ephoto);
            cmd.Parameters.AddWithValue("@joindate", ejoindate);
            cmd.Parameters.AddWithValue("@username", Username);
            cmd.Parameters.AddWithValue("@password", Username);
            cmd.ExecuteNonQuery();

            type = "Emp";
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

        public DataTable LoadEmployeeDetails()
        {
            OpenConection();

            DataTable dispemp = new DataTable();
            SqlCommand command = new SqlCommand("select  * from tblEmployeeRegistration where Emp_id = @eid ", con);
            command.Parameters.AddWithValue("@eid", eid);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dispemp);
            CloseConnection();
            return dispemp;


        }

        public DataTable UpdateEmployeeDetails()
        {
            OpenConection();

            DataTable updateemp = new DataTable();
            SqlCommand command = new SqlCommand("update tblEmployeeRegistration SET Branch_id=@branchid, E_name=@name,E_address=@address," +
                "E_gender=@gender,E_dob=@dob,E_phone=@phone,E_email=@email,E_mstatus=@mstatus," +
               " E_designation=@designation,E_photo=@photo,E_joinDate=@joindate where Emp_id = @eid ", con);
            command.Parameters.AddWithValue("@branchid", branchid);
            command.Parameters.AddWithValue("@name", ename);
            command.Parameters.AddWithValue("@address", eaddress);
            command.Parameters.AddWithValue("@gender", egender);
            command.Parameters.AddWithValue("@dob", edob);
            command.Parameters.AddWithValue("@phone", ephone);
            command.Parameters.AddWithValue("@email", eemail);
            command.Parameters.AddWithValue("@mstatus", emaritalstatus);
            command.Parameters.AddWithValue("@designation", edesignation);
            command.Parameters.AddWithValue("@photo", ephoto);
            command.Parameters.AddWithValue("@joindate", ejoindate);
            command.Parameters.AddWithValue("@eid", eid);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(updateemp);
            CloseConnection();
            return updateemp;


        }

    }
}