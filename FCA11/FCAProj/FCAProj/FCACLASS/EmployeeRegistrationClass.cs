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

        private string goldno;
        private string accountName;
        private int accountNo;
        private string mobile;
        private string gitem;
        private int count;
        private double weight;

        private int cid;
        private double goldamount;
        private string golgdate;

        private int itemid;

        private int goldid;


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
        public string Goldno { get => goldno; set => goldno = value; }
        public string AccountName { get => accountName; set => accountName = value; }
        public int AccountNo { get => accountNo; set => accountNo = value; }
        public string Mobile { get => mobile; set => mobile = value; }
        public string Gitem { get => gitem; set => gitem = value; }
        public int Count { get => count; set => count = value; }
        public double Weight { get => weight; set => weight = value; }
        public int Cid { get => cid; set => cid = value; }
        public double Goldamount { get => goldamount; set => goldamount = value; }
        public string Golgdate { get => golgdate; set => golgdate = value; }
        public int Itemid { get => itemid; set => itemid = value; }
        public int Goldid { get => goldid; set => goldid = value; }

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

            type = "Emp";
            string qry1 = "insert into tblLogin values (@type,@username,@password);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@type", type);
            cmd1.Parameters.AddWithValue("@username", username);
            cmd1.Parameters.AddWithValue("@password", username);
            cmd1.ExecuteNonQuery();
            int loginid = fetchemplyoeeid();

            string qry = "insert into tblEmployeeRegistration ([Branch_id] ,[E_name] ,[E_address] ,[E_gender] ,[E_dob] " +
                       " ,[E_phone]  ,[E_email] ,[E_mstatus] ,[E_designation]  ,[E_photo],[E_joinDate]   ,[E_username] " +
                       " ,[E_password],[Login_id]) values (@branchid,@name,@address,@gender,@dob,@phone,@email,@mstatus,@designation,@photo,@joindate,@username,@password," + loginid + ");";

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


        }


        public int fetchemplyoeeid()
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

        public void GenerateAutoGoldNo()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(Gl_id) from tbl_Goldloan ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                goldno = "GL" + count;
            }
            else
            {
                count = 1;
                goldno = "GL" + count;
            }

        }



        public DataTable Readcustomerdetails()
        {
            OpenConection();
            string condition = string.Empty;
            condition += !string.IsNullOrEmpty(accountName) ? "and C_name like @accountName " : string.Empty;
            condition += (accountNo != 0) ? "and Account_No = @accountNo " : string.Empty;
            condition += !string.IsNullOrEmpty(mobile) ? "and C_phone = @mobile " : string.Empty;

            DataTable dispcus = new DataTable();
            SqlCommand command = new SqlCommand("select C_id, C_name,C_addrress,C_phone from tblCustomerregistration where Branch_id=@branchid  " + condition, con);
            command.Parameters.AddWithValue("@accountName", "%" + accountName + "%");
            command.Parameters.AddWithValue("@accountNo", accountNo);
            command.Parameters.AddWithValue("@mobile", "%" + mobile + "%");
            command.Parameters.AddWithValue("@branchid", branchid);

            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(dispcus);
            CloseConnection();
            return dispcus;


        }


        public void Insertgolditems()
        {
            OpenConection();


            string qry1 = "insert into tbl_temp values (@itemname,@count,@weight);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@itemname", gitem);
            cmd1.Parameters.AddWithValue("@count", count);
            cmd1.Parameters.AddWithValue("@weight", weight);
            cmd1.ExecuteNonQuery();


        }

        public DataTable Readgolditems()
        {
            OpenConection();


            DataTable dispitem = new DataTable();
            SqlCommand command = new SqlCommand("select Item_id,Item_name,Count,Weight from tbl_temp ", con);


            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(dispitem);
            CloseConnection();
            return dispitem;


        }

        public double fetchtotalamount()
        {
            OpenConection();

            //  DataTable loginid = new DataTable();
            SqlCommand command = new SqlCommand("select sum(Weight) from tbl_temp ", con);
            double tamount = 0;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
                tamount = (double)cMax;
            return tamount;


        }

      /*  public double gramtotal()
        {
            OpenConection();
            SqlDataReader rd;
            string qry = " select sum(Weight) from tbl_temp;";
            SqlCommand cmd = new SqlCommand(qry, con);
             object rd = cmd.ExecuteScalar();
            if (rd!=DBNull.Value)
            {
                double s = (double)rd;

            }
            else
            {
                rd.Close();
                CloseConnection();
                return "";
            }

        }*/

        public double fetchgramamount()
        {
            OpenConection();

            //  DataTable loginid = new DataTable();
            SqlCommand command = new SqlCommand("select  max(GramAmount) from tbl_gramamount ", con);
            double amount = 0;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
                amount = (double)cMax;
            return amount;


        }



        public void InsertGoldloandeatils()
        {
            OpenConection();



            golgdate = System.DateTime.Now.ToString("dd/MM/yyyy");
            DateTime gdate = Convert.ToDateTime(golgdate);
            string qry = "insert into tbl_Goldloan values (@goldno,@date,@gamount,@cid);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@goldno", goldno);
            cmd.Parameters.AddWithValue("@date", golgdate);
            cmd.Parameters.AddWithValue("@gamount", goldamount);
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.ExecuteNonQuery();
            int goldid = fetchgoldloanid();

            string qry1 = "insert into tbl_golditemdetails (Gl_Id,Gitem,Gcount,Gweight) select " + goldid + ", Item_name,Count,Weight from tbl_temp ;";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.ExecuteNonQuery();

            string qry2 = "Delete  from tbl_temp ;";
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            cmd2.ExecuteNonQuery();

            string qry3 = "insert into tbl_goldinterest([Creditamount],[Amount_to_pay],[Date],[GoldNo]) values (@camount,@amountpay,@date,@gno);";
            SqlCommand cmd3 = new SqlCommand(qry3, con);
            cmd3.Parameters.AddWithValue("@camount", goldamount);
            cmd3.Parameters.AddWithValue("@amountpay", goldamount);
            cmd3.Parameters.AddWithValue("@date", golgdate);
            cmd3.Parameters.AddWithValue("@gno", goldno);
            cmd3.ExecuteNonQuery();

        }


        public int fetchgoldloanid()
        {
            OpenConection();

            //  DataTable loginid = new DataTable();
            SqlCommand command = new SqlCommand("select  max(Gl_id) from tbl_Goldloan ", con);
            int loanId = 0;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
                loanId = (int)cMax;
            return loanId;


        }

        public void deleteitem()
        {
            OpenConection();
            string qry= "Delete from tbl_temp where Item_id=@itemid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@itemid", itemid);

            cmd.ExecuteNonQuery();
        }


        public DataTable Execute_Viewgolddetails()
        {

            
            OpenConection();
           // string condition = string.Empty;
           // condition += !string.IsNullOrEmpty(accountName) ? "and C_name like @accountName " : string.Empty;
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select gl.Gl_id ,cus.C_name,cus.C_addrress,gl.Goldno,gl.Date,gl.LoanAmount " +
                "from tblCustomerregistration cus inner join  tbl_Goldloan gl  on gl.C_id=cus.C_id and cus.Branch_id =@branchid  " , con);
            command.Parameters.AddWithValue("@branchid", branchid);
            //command.Parameters.AddWithValue("@accountName", accountName);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }


        public DataTable Viewgolddetails_cus()
        {


            OpenConection();
             string condition = string.Empty;
             condition += !string.IsNullOrEmpty(accountName) ? "and C_name like @accountName " : string.Empty;
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select gl.Gl_id ,cus.C_name,cus.C_addrress,gl.Goldno,gl.Date,gl.LoanAmount " +
                "from tblCustomerregistration cus inner join  tbl_Goldloan gl  on gl.C_id=cus.C_id and cus.Branch_id =@branchid  " +condition, con);
            command.Parameters.AddWithValue("@branchid", branchid);
            command.Parameters.AddWithValue("@accountName", accountName);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public DataTable displaygolditem()
        {
            OpenConection();


            DataTable dispitem = new DataTable();
            SqlCommand command = new SqlCommand("select Gitem,Gcount,Gweight from tbl_golditemdetails where Gl_Id=@gid  ", con);
            command.Parameters.AddWithValue("@gid", goldid);

            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(dispitem);
            CloseConnection();
            return dispitem;


        }
        public DataTable GetUnamePwd()
        {


            OpenConection();
            
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("select E_username, E_password from tblEmployeeRegistration where  E_email=@email  ", con);
            command.Parameters.AddWithValue("@email", eemail);
            
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

       


        public DataTable goldreceipt()
        {


            OpenConection();
            
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("Select c.C_name,c.C_addrress,b.Branch_name,gl.Goldno,gl.Date,gl.LoanAmount " +
                " from tblCustomerregistration c inner join tbl_Goldloan gl on  gl.C_id=c.C_id inner join tblBranchRegistration b " +
                "on c.Branch_id=b.Branch_id  and c.C_id=@cid ", con);
            command.Parameters.AddWithValue("@cid", cid);
            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

        public DataTable golditemreceipt()
        {
            OpenConection();

            int id = fetchgoldloanid();
            DataTable dispitem = new DataTable();
            SqlCommand command = new SqlCommand("select Gitem,Gcount,Gweight from tbl_golditemdetails where Gl_Id= " + id +" ", con);
            //command.Parameters.AddWithValue("@gid", goldid);

            SqlDataAdapter da = new SqlDataAdapter(command);

            da.Fill(dispitem);
            CloseConnection();
            return dispitem;


        }

        public DataTable readcusname()
        {
            OpenConection();

            DataTable cus = new DataTable();
            SqlCommand command = new SqlCommand("select E_name from tblEmployeeRegistration where Emp_id=@id ", con);
            command.Parameters.AddWithValue("@id", eid);

            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(cus);
            CloseConnection();
            return cus;


        }


    }
}