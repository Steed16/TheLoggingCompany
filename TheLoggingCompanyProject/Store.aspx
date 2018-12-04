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
        }
        .column.left{
            width: 50%;
            background-color: lightgrey;
            border: 2px solid black;

        }
        .column.right{
            width: 50%;
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

    </style>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="content">
        <div class="store">
            <div class="column left">
                <h2>Shirt 1</h2>
                <h2><a class="button" id="shirt1" href="MasterProduct.aspx?id=7">Go to</a></h2>
            </div>
            <div class="column right">
                <h2>lamplcoins x100</h2>
                <h2><a class="button" id="lampl100" href="MasterProduct.aspx?id=10">Go to</a></h2>
            </div>
        </div>
    </div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" /> 
</body>
</html>
