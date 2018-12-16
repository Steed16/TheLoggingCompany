<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TheLoggingCompanyProject.About" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css"/>
    <title>The Logging Company</title>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    
    <!--- Sidebar Navigation !--> 
    <div class="sidenav">
        <a href="About_Cody.aspx">Cody W.</a>
        <a href="About_Dustin.aspx">Dustin S.</a>
        <a href="About_Nick.aspx">Nick R.</a>
        <a href="About_Zeke.aspx">Zeke T.</a>
    </div>
    
    <div class="content">
        <div id ="about">
            <h3 style="font-weight: bold; border-bottom: 2px solid black;;">About the Creators</h3>
            <div class="bio">
                <p>The website was created by four university students through the time span of approxmitely 
                    four months. Following the guidelines for the project by connecting to a database, using 
                    HTML/CSS, Javascript, PHP/C#, MySQL, AJAX, along with some other guidelines. The responsibilities
                     were split between the group members and they worked through Visual Studio utilizing Github 
                    to push their changes and modifications.</p>
                    <p>Information about each individual can be found by clicking their name on the side navigation
                     bar.</p>
            </div>
        </div>
    </div> 
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
