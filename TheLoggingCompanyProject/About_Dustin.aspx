<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Dustin.aspx.cs" Inherits="TheLoggingCompanyProject.About" %>
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
     
        <div class="Dustin_bio">
            <h3 style="text-align: center; font-weight: bold;">Dustin S.</h3>
            <p>Hi I'm Dustin. I am a Junior at Concordia College where I am Studying Computer Science.
                    Besides the college life, I play video games and DESTROY ALL OTHER PEOPLE THAT CHALLENGE ME!</p>
            <p>I have had an internship at Sanford IT where I was writing code for them and helping on projects.</p>
            <p>I created the base of the CSS and did the database connection to pull info from the database. I also created the shop and the master prodcut page</p>
        </div>
        <div>
            
        </div> 
        <div class="personalLink">
            <h3 style="font-weight: bold;">Linkedin:</h3> 
            <p>www.linkedin.com/Steed16</p>
        </div>
    </div>
</div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
