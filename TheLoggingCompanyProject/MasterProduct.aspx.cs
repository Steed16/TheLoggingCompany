using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TheLoggingCompanyProject
{
    public partial class MasterProduct : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string title1 = "";
            string price1 = "";

            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=mi3-wsq4.a2hosting.com;Initial Catalog=TheLoggingCompanyDB; User ID=logger; password=SuperAdmin5%;";
            using (cnn = new SqlConnection(connetionString))
            {
                int value = Convert.ToInt32(Request.QueryString["Id"]);

                try
                {
                    cnn.Open();

                    string sqlquery = "SELECT * FROM logger.Product WHERE Id = " + value;
                    string imageSource = "";
                    string imageSource1 = "";

                    SqlCommand command = new SqlCommand(sqlquery, cnn);
                    SqlDataReader sReader;
                    
                    sReader = command.ExecuteReader();

                    while (sReader.Read())
                    {
                        title1 = sReader["Name"].ToString(); 

                        price1 = sReader["Price"].ToString();
                    }

                    if (title1 == "Chad Shirt")
                    {
                        imageSource = "/wwwroot/css/images/ChadShirt.png";
                    }
                    else
                    {
                        imageSource = "/wwwroot/css/images/coins.gif";
                    }

                    title.InnerHtml = title1;
                    price.InnerHtml = price1;
                    imageProduct.Src = imageSource;
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    title1 = ex.ToString();
                }
            }
        }
    }
}