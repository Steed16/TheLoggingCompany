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
            <h3 style="text-align: center; font-weight: bold;">Zeke T.</h3>
            <p>A second year student, Ezekiel plans to graduate after first semester in the 2019-2020 school year. Looking to working the cybersecurity industry, he plans on attending the University of Minnesota's Masters in Security Technologies program. Ezekiel is passionate about his hobbies of coding, singing, gaming and music production.</p>
            <p href = "ezekieltown.net">Ezekiel's personal website</p>
            <p>Focused on security Ezekiel's job was to get the website secure whilst also aiding the group in completing the class assignments </p>
        </div>
        <div>
            <img src="/wwwroot/css/images/blankImage.png" alt="blankImage" class="responsive"/>
        </div> 
    </div>
</div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
