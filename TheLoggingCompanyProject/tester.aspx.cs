using System;

namespace TheLoggingCompanyProject
{
    public partial class tester : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddShoes_Click(object sender, EventArgs e)
        {
            
            // Add product 1 to the shopping cart
            ShoppingCart.Instance.AddItem(1);

            // Redirect the user to view their shopping cart
            Response.Redirect("ViewCart.aspx");
        }

        protected void btnAddShirt_Click(object sender, EventArgs e)
        {
            ShoppingCart.Instance.AddItem(2);
            Response.Redirect("ViewCart.aspx");
        }

        protected void btnAddPants_Click(object sender, EventArgs e)
        {
            ShoppingCart.Instance.AddItem(3);
            Response.Redirect("ViewCart.aspx");
        }
    }
}