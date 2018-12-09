<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Zeke.aspx.cs" Inherits="TheLoggingCompanyProject.About" %>
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
     
        <div class="Zeke_bio">
            <h3>Zeke T.</h3>
            <p>Zeke needs to write up his bio. Place it here. Maybe first paragraph is current academic info like
                    the current graduation year, major/minor, college activities you're involved in.</p>
            <p>Next paragraph could be work experience, personal website, linkedin profile, etc..</p>
            <p>You're responisbility in creating the website.</p>
        </div>
    </div>
</div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
