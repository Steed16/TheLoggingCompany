using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TheLoggingCompanyProject
{
    public partial class CRUD : System.Web.UI.Page
    {
        //Starting connection
        private string connetionString = null;

        private SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            connetionString = "Data Source=mi3-wsq4.a2hosting.com;Initial Catalog=TheLoggingCompanyDB; User ID=logger; password=SuperAdmin5%;";
            using (cnn = new SqlConnection(connetionString))
            {
                try
                {
                    cnn.Open();

                    string sqlquery = "SELECT * FROM logger.Product ";

                    SqlCommand command = new SqlCommand(sqlquery, cnn);
                    SqlDataReader sReader;

                    sReader = command.ExecuteReader();

                    while (sReader.Read())
                    {
                        //title1 = sReader["Name"].ToString();

                        //price1 = sReader["Price"].ToString();
                    }
                }
                catch (Exception ex)

                {
                    Response.Write(ex.Message);
                }
            }

            if (!IsPostBack)
            {
                // Clear();
                // GridFill();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtPname.Text != null && txtPname.Text != "" && txtPrice != null)
            {
                try
                {
                    using (cnn = new SqlConnection(connetionString))
                    {
                        cnn.Open();
                        string insert = "insert into logger.Product (Name,Price) values ('" + txtPname.Text + "','" + txtPrice.Text + "')";
                        SqlCommand cmd = new SqlCommand(insert, cnn);
                        int m = cmd.ExecuteNonQuery();
                        lblSuccessMessage.Text = "Submitted Successfully";
                        cnn.Close();
                    }
                }
                catch (Exception ex)
                {
                    lblErrorMessage.Text = ex.Message;
                }
            }
            else
            {
                lblErrorMessage.Text = "Enter Name or Price";
            }
        }

        private void Clear()
        {
            uIndex.Value = "";
            txtPname.Text = txtPrice.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
            lblErrorMessage.Text = lblSuccessMessage.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void GridFill()
        {
            try
            {
                using (cnn = new SqlConnection(connetionString))
                {
                    cnn.Open();
                    string commandText = "Select * from logger.Product";
                    SqlCommand cmd = new SqlCommand(commandText, cnn);
                    int m = cmd.ExecuteNonQuery();
                    lblSuccessMessage.Text = "Viewing all!";
                    cnn.Close();
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void lnkSelect_OnClick(object sender, EventArgs e)
        {
        //    int UserId = Convert.ToInt32((sender as LinkButton).CommandArgument);
        //    using (cnn = new SqlConnection(connetionString))
        //    {
        //        cnn.Open();
        //        MySqlDataAdapter sqlDa = new MySqlDataAdapter("UserViewByIndex", cnn);
        //        sqlDa.SelectCommand.Parameters.AddWithValue("_uIndex", UserId);
        //        sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
        //        DataTable dtbl = new DataTable();
        //        sqlDa.Fill(dtbl);

        //        txtPname.Text = dtbl.Rows[0][2].ToString();
        //        txtPrice.Text = dtbl.Rows[0][3].ToString();

        //        uIndex.Value = dtbl.Rows[0][0].ToString();

        //        btnSave.Text = "Update";
        //        btnDelete.Enabled = true;
        //    }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (cnn = new SqlConnection(connetionString))
                {
                    cnn.Open();
                    string commandText = "Delete from logger.Product where Id = "+ txtId.Text;
                    SqlCommand cmd = new SqlCommand(commandText, cnn);
                    int m = cmd.ExecuteNonQuery();
                    lblSuccessMessage.Text = "Deleted Entry";
                    cnn.Close();
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}