<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Nick.aspx.cs" Inherits="TheLoggingCompanyProject.About" %>
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
     
        <div class="Nick_bio">
            <h3 style="text-align: center; font-weight: bold;">Nick R.</h3>
            <p>A college student with the expected graduation date of winter 2019. 
                    Majoring in computer science with a concentration in computing and minoring 
                    in Spanish and Mathematics. Born and raised in Texas with opportunity to 
                    study in a private, prestigious institution.</p>
            <p>Working on campus at the Information Technology center as well as the Spanish department.
                    More of my work experience can be found on my linkedin profile as well as my 
                    my personal website.</p>
            <p>In the creation of this project, each group member found their strengths and weaknesses 
                    and we tailored responsibilities accordingly. I styled the "About", "Contact" and personal 
                    about pages for each group member.</p>
            <div>
                <img src="/wwwroot/css/images/nickImage.png" alt="nickImage" class="responsive"/>
            </div> 
            <div class="personalLink">
                <h3 style="font-weight: bold;">Linkedin:</h3> 
                <p>https://www.linkedin.com/in/nrebollo/</p>
            </div>
        </div>
    </div>
</div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
