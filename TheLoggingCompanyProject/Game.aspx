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
            width: 40%;
            background-color: lightgrey;
            border: 2px solid black;

        }
        .column.right{
            width: 55%;
            background-color: lightgray;
            border: 2px solid black;
            float: right;
        }
        .game:after{
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
        h3{
            text-align: left;
        }

    </style>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
    <div class="content">
        <div class="game">
            <div class="column left">
                <span id="logsCount" class="toolTipText"></span>
                <h2>Logs: 
                    <span id="logs">0</span>
                </h2>

            </div>
            <div class="column right">
                <h2>Possible Research</h2>
                <div class="column rl">
                    <p>Name of Technology</p>
                    <span id="r1Name" style="vertical-align: 20%">All the Caffeine (improve Human Workers by X amount)</span><br /><br />
                    <span id="r2Name" style="vertical-align: 20%">Genetically Modified Beavers..? (unlocks Genetically Modified Beavers)</span><br /><br />
                    <span id="r3Name" style="vertical-align: 20%">Pick the best ones, trust me (Unlocks selectively bred Beavers)</span><br /><br />
                    <span id="r4Name" style="vertical-align: 20%">These Beavers are Metal (unlocks Cyborg Beavers)</span><br /><br />
                    <span id="r5Name" style="vertical-align: 20%">I know a guy (improve $X per 1 Log)</span><br /><br />
                </div>
                <div class="column rr">
                    <p>Cost</p>
                    <span id="r1Cost" style="vertical-align: 20%">42</span><br />
                    <span id="r2Cost" style="vertical-align: 20%">42</span><br />
                    <span id="r3Cost" style="vertical-align: 20%">42</span><br />
                    <span id="r4Cost" style="vertical-align: 20%">42</span><br />
                    <span id="r5Cost" style="vertical-align: 20%">42</span><br />
                </div>

            </div> 
        </div>
    </div>    
</body>
</html>

