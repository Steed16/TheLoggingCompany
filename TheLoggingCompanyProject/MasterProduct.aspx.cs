using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TheLoggingCompanyProject
{
    public partial class MasterProduct : System.Web.UI.Page
    {
        //public static DataTable SQLSelect(SqlCommand cmdSQLQuery)
        //{
        //    //Get connection string
        //    string conConnectionString = ConfigurationManager.ConnectionStrings["LoggingDatabase"].ConnectionString;
        //    SqlConnection SQLDatabaseConnection = new SqlConnection(conConnectionString);
        //    //Perform Command
        //    SQLDatabaseConnection.

        //    cmdSQLQuery.Connection = SQLDatabaseConnection;
        //    DataSet dsPageInfo = new DataSet();
        //    SqlDataAdapter daPageInfo = new SqlDataAdapter(cmdSQLQuery);
        //    SQLDatabaseConnection.Open();
        //    daPageInfo.Fill(dsPageInfo);
        //    SQLDatabaseConnection.Close();
        //    return dsPageInfo.Tables[0];
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            string title1 = "";

            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=mi3-wsq4.a2hosting.com;Initial Catalog=TheLoggingCompanyDB; User ID=logger; password=SuperAdmin5%;";
            cnn = new SqlConnection(connetionString);
            try
            {
                cnn.Open();
                title1 = "connected";
                cnn.Close();
            }
            catch (Exception ex)
            {
                title1 = ex.ToString();
            }

            int value = Convert.ToInt32(Request.QueryString["Id"]);
            //string title1 = value.ToString();
            string price1 = "";
            string imageSource = "/wwwroot/css/images/testPic.png";

            title.InnerHtml = title1;
            price.InnerHtml = price1;
            imageProduct.Src = imageSource;
        }
    }
}