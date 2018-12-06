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
    
    <div class="content">
        <div id ="about">
            <h3 style="font-weight: bold; border-bottom: 2px solid black;;">About the Creators</h3>
            <div class="bio">
                <h3 style="font-weight: bold">Cody W.</h3>
                <br />  
                <h3>
                    Who you are!
                    <asp:Hyperlink id="codyLink" NavigateUrl="https://www.linkedin.com/in/cbweiland/" runat="server" Text="Linkedin Profile" />
                </h3>
            </div>
            <div class="bio">
                <h3 style="font-weight: bold">Dustin S.</h3>
                <br />
                <h3>
                    I am a junior at Concordia College.
                    I like video games.
                    <asp:Hyperlink id="dustinLink" NavigateUrl="https://omfgdogs.com/" runat="server" Text="Linkedin Profile" />
                </h3>
            </div>
            <div class="bio">
                <h3 style="font-weight: bold">Nick R.</h3>
                <br />
                <h3>
                    A current undergraduate at Concordia College with a major in Computer Science. <br />
                    Texas native actively searching for jobs within the computer field specifically in programming and development. <br />
                    Buy my shirt, I am also known as 'Chad', 'The Mexican God', 'The Best', and 'The Most Humble' ;)
                    <asp:Hyperlink id="nickLink" NavigateUrl="http://www.linkedin.com/in/nrebollo/" Text="Linkedin Profile" runat="server" />
                </h3>
            </div>
            <div class="bio">
                <h3 style="font-weight: bold">Zeke</h3>
                <br />
                <h3>
                    <asp:Hyperlink id="zekeLink" NavigateUrl="http://www.ezekieltown.net" runat="server" Text="Personal Website" />
                </h3>
            </div>
        </div>
    </div> 
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
