<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Cody.aspx.cs" Inherits="TheLoggingCompanyProject.About" %>
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
    <div class="content">
        <div id ="about">
            <h3 style="font-weight: bold; border-bottom: 2px solid black;">About the Creators</h3>
        
            <!--- Sidebar Navigation !-->    
            <div class="sidenav">
            <a href="About_Cody.aspx">Cody W.</a>
            <a href="About_Dustin.aspx">Dustin S.</a>
            <a href="About_Nick.aspx">Nick R.</a>
            <a href="About_Zeke.aspx">Zeke T.</a>
            </div>
     
        <div class="Cody_bio">
            <h3 style="text-align: center; font-weight: bold;">Cody W.</h3>
            <p>A senior graduating in May 19'.  Majoring in Computer Science with a Coaching minor. Born in Crookston, MN. </p>
            <p>I worked at ITS on campus for a year and a half. Now currently an intern at TrueIT.</p>
            <p>My contribution to the website is all over.  I helped pioneer the early look of the site.  Organized the backend structure.  Helped design and made the game.  Set up Home page.  Made validation for the contact page. </p>
        </div>
        <div>

        </div> 
        <div class="personalLink">
            <h3 style="font-weight: bold;">Linkedin:</h3> 
            <p>https://www.linkedin.com/in/cbweiland/</p>
        </div>
    </div>
</div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
