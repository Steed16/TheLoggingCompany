//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Data.Odbc;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using MySql.Data.MySqlClient;

//namespace TheLoggingCompanyProject
//{
//    public partial class CRUD : System.Web.UI.Page
//    {


//        //Starting connection
//        MySqlConnection conn = new MySqlConnection();
//        /*
//        static void Main(string[] args) {
//            try
//            {
//                string MyConString = "DRIVER={MySQL ODBC 8.0 Driver};" +
//                    "SERVER=ezekieltown.net;" +
//                    "DATABASE=ezekielt_loggingCompanyDB;" +
//                    "UID=ezekielt_admin;" +
//                    "PASSWORD=,1yjcZ=;qv.~4v==i;;" +
//                    "OPTION=3";
//                OdbcConnection MyConnection = new OdbcConnection(MyConString);
//                MyConnection.Open();
//                Console.WriteLine("\n !!! success, connected successfully !!!\n");
//            }
//            catch (OdbcException MyOdbcException)
//            {
//                for (int i = 0; i < MyOdbcException.Errors.Count; i++)
//                {
//                    Console.Write("ERROR #" + i + "\n" +
//                                  "Message: " +
//                                  MyOdbcException.Errors[i].Message + "\n" +
//                                  "Native: " +
//                                  MyOdbcException.Errors[i].NativeError.ToString() + "\n" +
//                                  "Source: " +
//                                  MyOdbcException.Errors[i].Source + "\n" +
//                                  "SQL: " +
//                                  MyOdbcException.Errors[i].SQLState + "\n");
//                }
//            }
//        }
//        */
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            try
//            {
//                //var conn = new OdbcConnection();
                
//                //conn.ConnectionString = "DRIVER={MySQL ODBC 8.0 Driver};" +
//                //            "SERVER=ezekieltown.net;" +
//                //            "DATABASE=ezekielt_loggingCompanyDB;" +
//                //            "UID=ezekielt_admin;" +
//                //            "PASSWORD=,1yjcZ=;qv.~4v==i;;";
//                //conn.ConnectionString = "DRIVER={MySQL ODBC 8.0 Driver};" +
//                //            "SERVER=localhost;" +
//                //            "DATABASE=asdf;" +
//                //            "UID=dev;" +
//                //            "PASSWORD=dev;";
//                //conn.ConnectionString = "DRIVER={MySQL ODBC 8.0 Driver};SERVER=localhost;DATABASE=asdf;UID=dev;PASSWORD=dev;";
//                //conn.ConnectionString = "Persist Security Info=False;database=asdf;server=localhost;Connect Timeout=30;user id=dev; pwd=dev";
//                conn.ConnectionString = "Persist Security Info=False;database=ezekielt_loggingCompanyDB;server=ezekieltown.net;Connect Timeout=30;user id=ezekielt_admin; pwd=',1yjcZ=;qv.~4v==i;'";

//                //conn.Open();
                
//               // string commandText = "SELECT * FROM User; ";
//                using (MySqlConnection connection = new MySqlConnection(conn.ConnectionString))
//                {
//                    conn.Open();
//                    string commandText = "SELECT * FROM User; ";
//                    MySqlCommand command = new MySqlCommand(commandText, connection);
//                    command.CommandType = CommandType.Text;
//                    MySqlDataReader reader;

//                    try
//                {
                        
//                        if (conn.State == ConnectionState.Open) {
//                            reader = command.ExecuteReader();
//                        }
                    
//                }

//                catch (Exception ex)

//                {
//                    Response.Write(ex.Message);
//                }
//            }
//                if (conn.State == ConnectionState.Open)
//                {
//                    conn.Close();
//                }
//            } catch (Exception ex)
//            {
//                Response.Write("ERROR: " + ex.ToString());
//            }


//            if (!IsPostBack)
//            {
//               // Clear();
//               // GridFill();
//            }
//        }

        
//        protected void btnSave_Click(object sender, EventArgs e)
//        {
        
//            try
//            {
//                using (MySqlConnection sqlCon = new MySqlConnection(conn.ConnectionString))
//                {
//                    sqlCon.Open();
//                    MySqlCommand sqlCmd = new MySqlCommand("UserAddOrEdit", sqlCon);
//                    sqlCmd.CommandType = CommandType.StoredProcedure;
//                    sqlCmd.Parameters.AddWithValue("_uIndex", Convert.ToInt32(uIndex.Value == "" ? "0" : uIndex.Value));
//                    sqlCmd.Parameters.AddWithValue("_username", txtUsername.Text.Trim());
//                    sqlCmd.Parameters.AddWithValue("_email", txtEmail.Text.Trim());
//                    sqlCmd.Parameters.AddWithValue("_hPassword", txtPassword.Text.Trim());
//                    sqlCmd.ExecuteNonQuery();
//                    GridFill();
//                    Clear();
//                    lblSuccessMessage.Text = "Submitted Successfully";
//                }
//            }
//            catch (Exception ex)
//            {

//                lblErrorMessage.Text = ex.Message;
//            }
           
//    }
//    void Clear()
//        {
        
//            uIndex.Value = "";
//            txtUsername.Text = txtEmail.Text = txtPassword.Text = "";
//            btnSave.Text = "Save";
//            btnDelete.Enabled = false;
//            lblErrorMessage.Text = lblSuccessMessage.Text = "";
            
//    }

//    protected void btnClear_Click(object sender, EventArgs e)
//        {
        
//            Clear();
            
//    }

//    void GridFill()
//        {
        
//            using(MySqlConnection sqlCon = new MySqlConnection(conn.ConnectionString))
//            {
//                sqlCon.Open();
//                MySqlDataAdapter sqlDa = new MySqlDataAdapter("UserViewAll", sqlCon);
//                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
//                DataTable dtbl = new DataTable();
//                sqlDa.Fill(dtbl);
//                gvUser.DataSource = dtbl;
//                gvUser.DataBind();
//            }
//            //*/
//    }

//    protected void lnkSelect_OnClick(object sender, EventArgs e)
//        {
        
//        int UserId = Convert.ToInt32((sender as LinkButton).CommandArgument);
//            using (MySqlConnection sqlCon = new MySqlConnection(conn.ConnectionString))
//            {
//                sqlCon.Open();
//                MySqlDataAdapter sqlDa = new MySqlDataAdapter("UserViewByIndex", sqlCon);
//                sqlDa.SelectCommand.Parameters.AddWithValue("_uIndex",UserId);
//                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
//                DataTable dtbl = new DataTable();
//                sqlDa.Fill(dtbl);

//                txtUsername.Text = dtbl.Rows[0][1].ToString();
//                txtEmail.Text = dtbl.Rows[0][2].ToString();
//                txtPassword.Text = dtbl.Rows[0][3].ToString();

//                uIndex.Value = dtbl.Rows[0][0].ToString();

//                btnSave.Text = "Update";
//                btnDelete.Enabled = true;
//            }
//            //*/
//    }

//    protected void btnDelete_Click(object sender, EventArgs e)
//        {
        
//            using (MySqlConnection sqlCon = new MySqlConnection(conn.ConnectionString))
//            {
//                sqlCon.Open();
//                MySqlCommand sqlCmd = new MySqlCommand("UserDeleteByIndex", sqlCon);
//                sqlCmd.CommandType = CommandType.StoredProcedure;
//                sqlCmd.Parameters.AddWithValue("_uIndex", Convert.ToInt32(uIndex.Value == "" ? "0" : uIndex.Value));
//                sqlCmd.ExecuteNonQuery();
//                GridFill();
//                Clear();
//                lblSuccessMessage.Text = "Deleted Successfully";
//            }
//            //*/
//    }

//}
//}
