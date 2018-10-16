<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="TheLoggingCompanyProject.Game" %>
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
            width: 48%;
            background-color: lightgrey;
            border: 2px solid black;
            padding-right: 2px;
        }
        .column.right{
            width: 48%;
            background-color: lightgray;
            border: 2px solid black;
            float: right;
        }
        .game:after{
            content: "";
            display: table;
            clear: both;
        }
    </style>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
    <div class="content">
        <h3>This is our Game!</h3>
        <div class="game">
            <div class="column left">
                <span id="logsCount" class="toolTipText"></span>
                <h2>"Logs "
                    <span id="logs"></span>
                </h2>
            </div>
            <div class="column right">

            </div> 
        </div>
    </div>    
</body>
</html>

