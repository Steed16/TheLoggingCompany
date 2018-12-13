<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tester.aspx.cs" Inherits="TheLoggingCompanyProject.tester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Store</title>
</head>
<body>
    <form id="form1" runat="server">
         
        <div class="container">
            <h1>My Store</h1>
             
            <div class="products">
                <div>Shoes - <asp:LinkButton runat="server" ID="btnAddShirt" OnClick="btnAddShoes_Click">Add To Cart</asp:LinkButton></div>
 
                <div>Shirt - <asp:LinkButton runat="server" ID="btnAddShorts" OnClick="btnAddShirt_Click">Add To Cart</asp:LinkButton></div>
                <div>Pants - <asp:LinkButton runat="server" ID="btnAddShoes" OnClick="btnAddPants_Click">Add To Cart</asp:LinkButton></div>
            </div>
 
             
            <a href="ViewCart.aspx">View Cart</a>
        </div>
         
    </form>
</body>
</html>
