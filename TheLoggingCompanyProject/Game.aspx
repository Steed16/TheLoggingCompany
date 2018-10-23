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
            height: 500px;
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
        h2{
            color: black;
        }

    </style>
    <script>
        //
        //http://dhmholley.co.uk/incrementals.html
        //Good source of help :D
        //
        //
        //Code Storage //
        //
        //numLogs = parseInt(document.getElementById("logs").innerHTML);
        //numLogs++;
        //document.getElementById("logs").innerHTML = numLogs;
        //

        var numLogs = 0; //Total number of logs
        var autoHuman = 0; //Number of Humans

        
       function chopLog(number) {
           numLogs = numLogs + number
           document.getElementById("logs").innerHTML = numLogs;
        };

        function buyHuman() {
            var humanCost = Math.floor(10 * Math.pow(1.1, autoHuman)); //math.power(base, Exponent)
            if(numLogs >= humanCost) {
                autoHuman++;
                numLogs = numLogs - humanCost;
                document.getElementById('human').innerHTML = autoHuman;  //updates the number of autohumans for the user
                document.getElementById('logs').innerHTML = numLogs;    //updates total number of logs
            };
            var nextCost = Math.floor(10 * Math.pow(1.1,autoHuman));       //works out the cost of the next human
            document.getElementById('humanCost').innerHTML = nextCost;
        };



        window.setInterval(function () {
	
	        chopLog(autoHuman);
	
        }, 1000);




    </script>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="content">
        <div class="game">
            <div class="column left">
                <button id="cutWood" onclick="chopLog(1)">
                    Chop that Wood!
                </button>
                <!-- Resources -->
                <div class="resources">
                    <p style="font-weight: bold; border-bottom: 2px solid black;" >Resources</p>
                    <span id="logCount" class="toolTipText"></span>
                    <p>Logs&trade;: 
                        <span id="logs">0</span>
                    </p>
                    <span id="foodCount" class="toolTipText"></span>
                    <p>Beaver Food: 
                        <span id="food">0</span>
                    </p>
                    <span id="smartsCount" class="toolTipText"></span>
                    <p>Beaver Smartz&trade;: 
                        <span id="smart">0</span>
                    </p>
                    <span id="moneyCount" class="toolTipText"></span>
                    <p>Money: 
                        <span id="money">0</span>
                    </p>
                </div>
                <!-- Management Stats -->
                <div class="manage">
                    <p style="font-weight: bold; border-bottom: 2px solid black;" >Management</p>
                    <p>Sell logs:
                        <span id="logPrice">0</span>
                    </p>
                    <button id="sellWood">
                    Sell those Logs!
                    </button>
                    <p>Logs per second:
                        <span id="logsS">0</span><br />
                        Food consumed per second:
                        <span id="foodEat">0</span><br />
                        Food Produced per second:
                        <span id="foodP">0</span><br /> 
                    </p>
                </div>
                <!-- Production -->
                <div class="production">
                    <p style="font-weight: bold; border-bottom: 2px solid black;" >Production</p>
                    <span id="humanCount" class="toolTipText"></span>
                    <p>Humans: 
                        <span id="human">0</span><br />
                        Cost:
                        <span id="humanCost">2</span>
                    </p>                  
                    <button id="buyHuman" onclick="buyHuman()">
                    Hire more humans
                    </button>

                    <span id="beaverCount" class="toolTipText"></span>
                    <p>Beavers: 
                        <span id="beaver">0</span><br />
                        Cost:
                        <span id="beaverCost">0</span>
                    </p>
                    <button id="buyBeaver">
                    Buy that Beaver
                    </button>

                    <span id="sBeaverCount" class="toolTipText"></span>
                    <p>Selectively Bred Beavers: 
                        <span id="sBeaver">0</span><br />
                        Cost:
                        <span id="sBeaverCost">0</span>
                    </p>
                    <button id="buySBeaver">
                    Buy Selectively Bred Beavers
                    </button>

                    <span id="gBeaverCount" class="toolTipText"></span>
                    <p>Genetically Modified Beavers: 
                        <span id="gBeaver">0</span><br />
                        Cost:
                        <span id="gBeaverCost">0</span>
                    </p>
                    <button id="buyGBeaver">
                    Buy Genetically Modified Beaver
                    </button>
                </div>
                
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
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>

