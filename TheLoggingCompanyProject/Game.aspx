<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="TheLoggingCompanyProject.Game" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/gameStyle.css"/>
    <title>The Logging Company</title>
    
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
        //
        //https://www.deviantart.com/wanyo/art/Tainted-Tali-Beaver-Walk-Animation-656823674
        //https://www.deviantart.com/wanyo/art/Tainted-Tali-Beaver-Sleep-Animation-656824203
        //https://www.deviantart.com/wanyo/art/Tainted-Tali-Beaver-Wag-Animation-656824517


        var numLogs = 0; //Total number of logs
        var autoHuman = 0; //Number of Humans
        var autoBeaver = 0; //Number of normal Beavers
        var autoSBeaver = 0; //Number of selectively bred Beavers
        var autoHumanOutput = 1
        var autoBeaverOutput = 4
        var autoSBeaverOutput = 8

        


        
       function chopLog(num1, num2, num3) {
           numLogs = numLogs + num1 + num2 + num3;
           document.getElementById("logs").innerHTML = numLogs;
           document.getElementById('logsS').innerHTML = (autoHuman * autoHumanOutput) + (autoBeaverOutput * autoBeaver) + (autoSBeaverOutput * autoSBeaver); 
        };

        function buyHuman() {
            var humanCost = Math.floor(10 * Math.pow(1.1, autoHuman));      //math.power(base, Exponent)
            if(numLogs >= humanCost) {
                autoHuman++;
                numLogs = numLogs - humanCost;
                document.getElementById('human').innerHTML = autoHuman;     //updates the number of autohumans for the user
                document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
            };
            var nextCost = Math.floor(10 * Math.pow(1.1,autoHuman));        //works out the cost of the next human
            document.getElementById('humanCost').innerHTML = nextCost;

        };

        function buyBeaver() {
            if (autoBeaver == 0) {                                          //made to do intial cost
                var beaverCost = 1000;  
            } else {
                var beaverCost = Math.floor(10 * Math.pow(1.1, autoBeaver)) + 1000; //math.power(base, Exponent)
            }

            if(numLogs >= beaverCost) {
                autoBeaver++;
                numLogs = numLogs - beaverCost;
                document.getElementById('beaver').innerHTML = autoBeaver;   //updates the number of autoBeavers for the user
                document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
            };
            var nextCost = Math.floor(10 * Math.pow(1.1,autoBeaver)) + 1000;       //works out the cost of the next human
            document.getElementById('beaverCost').innerHTML = nextCost;
        };

        function buySBeaver() {
            if (autoSBeaver == 0) {                                          //made to do intial cost
                var beaverSCost = 10000;
            } else {
                var beaverSCost = Math.floor(10 * Math.pow(1.1, autoSBeaver)) + 10000; //math.power(base, Exponent)
            }
            if(numLogs >= beaverSCost) {
                autoSBeaver++;
                numLogs = numLogs - beaverSCost;
                document.getElementById('sBeaver').innerHTML = autoSBeaver;   //updates the number of autoSBeavers for the user
                document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
            };
            var nextCost = Math.floor(10 * Math.pow(1.1,autoSBeaver)) + 10000;       //works out the cost of the next human
            document.getElementById('sBeaverCost').innerHTML = nextCost;
        };

        function buyTechnology() {

        }



        window.setInterval(function () {

            var stupid = autoHuman * autoHumanOutput;
            var moreStupid = autoBeaverOutput * autoBeaver;
            var evenMoreStupid = autoSBeaverOutput * autoSBeaver;

            chopLog(stupid, moreStupid, evenMoreStupid);
 
	
        }, 1000);




    </script>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="contentGame">
        <div class="game">
            <div class="column left">
                <!-- Resources -->
                <div class="resources">
                    <p style="font-weight: bold; border-bottom: 2px solid black;" >Resources</p>
                    <button id="cutWood" onclick="chopLog(1,0,0)">
                        Chop that Wood!
                    </button>
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
            </div>
            <div class="column middle">
            <!-- Production -->
                <div class="production">
                    <p style="font-weight: bold; border-bottom: 2px solid black;" >Production</p>
                    <span id="humanCount" class="toolTipText"></span>
                    <p>Humans: 
                        <span id="human">0</span><br />
                        Cost:
                        <span id="humanCost">10</span>
                    </p>                  
                    <button id="buyHuman" onclick="buyHuman()">
                    Hire more humans
                    </button>

                    <span id="beaverCount" class="toolTipText"></span>
                    <p>Beavers: 
                        <span id="beaver">0</span><br />
                        Cost:
                        <span id="beaverCost">1000</span>
                    </p>
                    <button id="buyBeaver" onclick="buyBeaver()">
                    Buy that Beaver
                    </button>

                    <span id="sBeaverCount" class="toolTipText"></span>
                    <p>Selectively Bred Beavers: 
                        <span id="sBeaver">0</span><br />
                        Cost:
                        <span id="sBeaverCost">10000</span>
                    </p>
                    <button id="buySBeaver" onclick="buySBeaver()">
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
            <div class="column middle2">
                <p style="font-weight: bold; border-bottom: 2px solid black;" >Technologies</p>
                <div class="column rl">
                    <button class="techButton" id="r1Name" onclick="buyTechnology(0)" style="vertical-align: 20%">All the Caffeine (improve Human Workers by X amount)<br /> 100 Wood </button><br /><br />
                    <button class="techButton" id="r2Name" onclick="buyTechnology(1)" style="vertical-align: 20%">Genetically Modified Beavers..? (unlocks Genetically Modified Beavers)<br /> 200 Wood </button><br /><br />
                    <button class="techButton" id="r3Name" onclick="buyTechnology(2)" style="vertical-align: 20%">Pick the best ones, trust me (Unlocks selectively bred Beavers)<br /> 300 Wood </button><br /><br />
                    <button class="techButton" id="r4Name" onclick="buyTechnology(3)" style="vertical-align: 20%">These Beavers are Metal (unlocks Cyborg Beavers)<br /> 400 Wood </button><br /><br />
                    <button class="techButton" id="r5Name" onclick="buyTechnology(4)" style="vertical-align: 20%">I know a guy (improve $X per 1 Log)<br /> 500 Wood </button><br /><br />
                </div>
            </div> 
            <div class="column right">
                <p style="font-weight: bold; border-bottom: 2px solid black;" >Pay To Win!</p>
                <a class="button" id="coins100" style="vertical-align: 20%" href="MasterProduct.aspx?id=15">CRAFTCOINS: 100<br /> $10 </a>
                <a class="button" id="coins1000" style="vertical-align: 20%" href="MasterProduct.aspx?id=16">CRAFTCOINS: 1000<br /> $125 </a> <br />
                <a class="button" id="cash100" style="vertical-align: 20%" href="MasterProduct.aspx?id=17">COBBERCASH: 100<br /> $15 </a>
                <a class="button" id="cash1000" style="vertical-align: 20%" href="MasterProduct.aspx?id=18">COBBERCASH: 1000<br /> $175 </a> <br />
                <a class="button" id="bucks100" style="vertical-align: 20%" href="MasterProduct.aspx?id=19">KAMELBUCKS: 100<br /> $25 </a>
                <a class="button" id="bucks1000" style="vertical-align: 20%" href="MasterProduct.aspx?id=20">KAMELBUCKS: 1000<br /> $300 </a> <br />
                <a class="button" id="lampl100" style="vertical-align: 20%" href="MasterProduct.aspx?id=21">LAMPLCOINS: 100<br /> $50 </a>
                <a class="button" id="lampl1000" style="vertical-align: 20%" href="MasterProduct.aspx?id=22">LAMPLCOINS: 1000<br /> $600 </a> <br />
                <a class="button" id="chadpay1" style="vertical-align: 20%" href="MasterProduct.aspx?id=23">CHAD SHIRT: 1<br /> $800 </a> <br />
            </div>
        </div>
    </div> 
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>

