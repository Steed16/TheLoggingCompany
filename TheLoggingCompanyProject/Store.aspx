<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="TheLoggingCompanyProject.Store" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css"/>
    <title>The Logging Company</title>
    <style>
        * {
            box-sizing: border-box;
        }
        .column{
            float: left;
            padding: 10px;
            margin-top: 15px;
        }
        .column.left{
            width: 49%;
            background-color: lightgrey;
            border: 2px solid black;

        }
        .column.right{
            width:49%;
            background-color: lightgray;
            border: 2px solid black;
            float: right;
        }
        .store:after{
            content: "";
            display: table;
            clear: both;
        }
        .column.rl{
            width: 70%;
        }
        .column.rr{
            width: 25%;
            float: right;
        }
        .column.right:after{
            content: "";
            display: table;
            clear: both;
        }
        h2{
            color: black;
            text-align: center;
        }
        .content1 {
            left: 20.75%;
            background-color: white;
            position: relative;
            width: 59%;
            overflow: auto;
        }
        
    </style>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="content1">
        <h1 style="text-align:center; display: block;">Welcome To The Microstore</h1>
        <div class="store">
            <div class="column left">
                <h2>Chad Shirt</h2>
                <h2><a class="button" id="shirt1" href="MasterProduct.aspx?id=23">$800</a></h2>
            </div>
            <div class="column right">
                <h2>Craft Coins x100</h2>
                <h2><a class="button" id="Ccoins100" href="MasterProduct.aspx?id=15">$10</a></h2>
            </div>
            <div class="column left">
                <h2>Craft Coins x1000</h2>
                <h2><a class="button" id="Ccoins1000" href="MasterProduct.aspx?id=16">$125</a></h2>
            </div>
            <div class="column right">
                <h2>Cobber Cash x100</h2>
                <h2><a class="button" id="Ccash100" href="MasterProduct.aspx?id=17">$15</a></h2>
            </div>
            <div class="column left">
                <h2>Cobber Cash x1000</h2>
                <h2><a class="button" id="Ccash1000" href="MasterProduct.aspx?id=18">$175</a></h2>
            </div>
            <div class="column right">
                <h2>Kamel Bucks x100</h2>
                <h2><a class="button" id="Kbucks100" href="MasterProduct.aspx?id=19">$25</a></h2>
            </div>
            <div class="column left">
                <h2>Kamel Bucks x1000</h2>
                <h2><a class="button" id="Kbucks1000" href="MasterProduct.aspx?id=20">$300</a></h2>
            </div>
            <div class="column right">
                <h2>Lampl Coins x100</h2>
                <h2><a class="button" id="Lcoins100" href="MasterProduct.aspx?id=21">$50</a></h2>
            </div>
            <div class="column left">
                <h2>Lampl Coins x1000</h2>
                <h2><a class="button" id="Lcoins1000" href="MasterProduct.aspx?id=22">$600</a></h2>
            </div>
        </div>
    </div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" /> 
</body>
</html>