using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheLoggingCompanyProject
{
    public partial class MasterProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int value = Convert.ToInt32(Request.QueryString["Id"]);
            string title1 = value.ToString();
            string price1 = "";
            string imageSource = "/wwwroot/css/images/testPic.png";

            title.InnerHtml = title1;
            price.InnerHtml = price1;
            imageProduct.Src = imageSource;
        }
    }
}