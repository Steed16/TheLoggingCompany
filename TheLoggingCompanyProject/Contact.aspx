<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TheLoggingCompanyProject.Contact" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css">
    <title>The Logging Company</title>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
    <div class="form">
        <form id="form2" runat="server">
        <label for="firstName" id="Label1" runat="server">First Name:</label>
        <input type="text" id="Text1" name="firstName" runat="server" />

        <input type="submit" id="submit" name="submit" value="Press it!" />
    </form>
    </div>
</body>
</html>