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
            <h3 style="font: bold">About the people</h3>

            <div class="bio">
                <h3>Cody Weiland</h3>
                <br />  
                <h3>Who you are!</h3>
            </div>
            <div class="bio">
                <h3>Dustin Steedsman</h3>
                <br />
                <h3>I am a junior at Concordia College.
                    I like video games.
                </h3>
            </div>
            <div class="bio">
                <h3>Chad</h3>
            </div>
            <div class="bio">
                <h3>Zeke</h3>
            </div>
        </div>
    </div> 
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>
