<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheLoggingCompanyProject.Default" %>

<!DOCTYPE html>

<style>
    body {
        background-image: url('https://media.giphy.com/media/TR9Za7h5cAl3O/giphy-downsized.gif');
        background-size: cover;
    }

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css">
    <title>The Logging Company</title>
</head>
<body>
    <div class="container">
        <div class="Nav">
            <div class="heading">
                <h1>The Logging Company</h1>
            </div> 
                <div id="navigation">
                    <ul>                 
                        <li> <a href="Default.aspx">Home</a></li>  
                        <li> <a href="Game.aspx">Game</a></li>  
                        <li> <a href="Store.aspx">Shop</a></li>  
                        <li> <a href="Contact.aspx">Contact</a></li>  
                        <li> <a href="About.aspx">About</a></li>
                        <li> <a href="Account.aspx">Sign in/up</a></li>  
                    </ul>               
                </div>
        </div>
    </div>
</body>
</html>
