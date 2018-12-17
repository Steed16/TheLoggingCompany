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

                    

                    title.InnerHtml = title1;
                    price.InnerHtml = price1;

                    if (value == 23)
                    {
                        imageSource = "/wwwroot/css/images/ChadTshirt_front.jpg";
                        imageSource1 = "/wwwroot/css/images/ChardTshirt_Back.jpg";
                    }
                    if (value != 23)
                    {
                        imageSource = "/wwwroot/css/images/coins.gif";
                    }
                    imageProduct.Src = imageSource;
                    imageProduct1.Src = imageSource1;
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