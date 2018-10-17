<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheLoggingCompanyProject.Default" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<%-- background-image: url('https://media.giphy.com/media/TR9Za7h5cAl3O/giphy-downsized.gif'); --%>

<style>
    body {
        
        background-image: url("/images/beaver.gif");
        background-size: cover;

    }

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css">
    <title>The Logging Company</title>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="content">
        <h3>Stuff here</h3>
    </div>    
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
   
</body>

</html>
