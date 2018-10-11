<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="TheLoggingCompanyProject.SignIn" %>
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
            <div>
                <label for="userName" id="userNameid" runat="server">Username:</label>
                <input type="text" id="userNameinput" name="userName" runat="server" />
            </div>
            <div>
                <label for="password" id="passwordid" runat="server">Password:</label>
                <input type="text" id="passwordInput" name="password" runat="server" />
            </div>
        <input type="submit" id="submit" name="submit" value="Press it!" />
    </form>
    </div>   
</body>
</html>