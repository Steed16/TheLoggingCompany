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
        //This is where I found the beaver gifs.  I not make these
        //https://www.deviantart.com/wanyo/art/Tainted-Tali-Beaver-Walk-Animation-656823674
        //https://www.deviantart.com/wanyo/art/Tainted-Tali-Beaver-Sleep-Animation-656824203
        //https://www.deviantart.com/wanyo/art/Tainted-Tali-Beaver-Wag-Animation-656824517

        //Number of logs
        var numLogs = 0; 

        //Number of auto miners
        var autoHuman = 0;
        var autoBeaver = 0; 
        var autoSBeaver = 0;
        var autoGBeaver = 0;
        var autoRBeaver = 0;

        //Base output of auto miners
        var autoHumanOutput = 1;
        var autoBeaverOutput = 4;
        var autoSBeaverOutput = 8;
        var autoGBeaverOutput = 16;
        var autoRBeaverOutput = 100;

        //Is unlocked?
        var unlockBeaver = false;
        var unlockSBeaver = false;
        var unlockGBeaver = false;
        var unlockRBeaver = false;

        ////Tech modifiers
        //var techHuman = 0;
        //var techBeaver = 0;
        //var techSBeaver = 0;
        //var techGBeaver = 0;
        //var techRBeaver = 0;

        //var tech1;
        //var tech2;
        //var tech3;
        //var tech4;
        //var tech5;


        ////Tech List
        //var list = [
        //    { name: 'All the Caffeine (improve Humans by 10%)', effect: .1, cost: 1, miner: "human" },
        //    { name: 'You actually hiring Beavers? (Yes, you can hire Beavers now)', effect: true, cost: 1, miner: "beaver" },
        //    { name: 'Pick the best ones, trust me (Unlocks selectively bred Beavers)', effect: true, cost: 1, miner: "sBeaver" },
        //    { name: 'Genetically Modified Beavers..? (unlocks Genetically Modified Beavers)', effect: true, cost: 1, miner: "gBeaver" },
        //    { name: 'These Beavers are Metal (unlocks Cyborg Beavers)', effect: true, cost: 1, miner: "rBeaver" },            
        //    { name: 'Increase Beavers working (improve Beavers by 10%)', effect: .1, cost: 1, miner: "beaver" },
        //    { name: 'Increase Selectively Beavers working (improve Selectively Bred Beavers by 10%)', effect: .1, cost: 1, miner: "sBeaver" },
        //    { name: 'Increase Genetically Modified Beavers working (improve Genetically Modified Beavers by 10%)', effect: .1, cost: 1, miner: "gBeaver" },
        //    { name: 'Increase CYBORG Beavers working (improve CYBORG Beavers by 10%)', effect: .1, cost: 1, miner: "rBeaver" },
        //];
        //list.reverse();
        
       function chopLog(num1, num2, num3, num4, num5) {
           numLogs = numLogs + num1 + num2 + num3 + num4 + num5;
           document.getElementById("logs").innerHTML = numLogs;
           document.getElementById('logsS').innerHTML = (autoHuman * autoHumanOutput) + (autoBeaverOutput * autoBeaver) + (autoSBeaverOutput * autoSBeaver) + (autoGBeaverOutput * autoGBeaver) + (autoRBeaverOutput * autoRBeaver); 
        };

        // #region miners
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
            if (unlockBeaver == true) {
                if (autoBeaver == 0) {                                          //made to do intial cost
                    var beaverCost = 1000;
                } else {
                    var beaverCost = Math.floor(10 * Math.pow(1.1, autoBeaver)) + 1000; //math.power(base, Exponent)
                }

                if (numLogs >= beaverCost) {
                    autoBeaver++;
                    numLogs = numLogs - beaverCost;
                    document.getElementById('beaver').innerHTML = autoBeaver;   //updates the number of autoBeavers for the user
                    document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
                };
                var nextCost = Math.floor(10 * Math.pow(1.1, autoBeaver)) + 1000;       //works out the cost of the next human
                document.getElementById('beaverCost').innerHTML = nextCost;
            }
        };

        function buySBeaver() {
            if (unlockSBeaver == true) {
                if (autoSBeaver == 0) {                                          //made to do intial cost
                    var beaverSCost = 5000;
                } else {
                    var beaverSCost = Math.floor(10 * Math.pow(1.1, autoSBeaver)) + 5000; //math.power(base, Exponent)
                }
                if (numLogs >= beaverSCost) {
                    autoSBeaver++;
                    numLogs = numLogs - beaverSCost;
                    document.getElementById('sBeaver').innerHTML = autoSBeaver;   //updates the number of autoSBeavers for the user
                    document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
                };
                var nextCost = Math.floor(10 * Math.pow(1.1, autoSBeaver)) + 5000;       //works out the cost of the next human
                document.getElementById('sBeaverCost').innerHTML = nextCost;
            }
        };

        function buyGBeaver() {
            if (unlockGBeaver == true) {
                if (autoGBeaver == 0) {                                          //made to do intial cost
                    var beaverGCost = 10000;
                } else {
                    var beaverGCost = Math.floor(10 * Math.pow(1.1, autoGBeaver)) + 10000; //math.power(base, Exponent)
                }
                if (numLogs >= beaverGCost) {
                    autoGBeaver++;
                    numLogs = numLogs - beaverGCost;
                    document.getElementById('gBeaver').innerHTML = autoGBeaver;   //updates the number of autoSBeavers for the user
                    document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
                };
                var nextCost = Math.floor(10 * Math.pow(1.1, autoGBeaver)) + 10000;       //works out the cost of the next human
                document.getElementById('gBeaverCost').innerHTML = nextCost;
            }
        };

        function buyRBeaver() {
            if (unlockRBeaver == true) {
                if (autoRBeaver == 0) {                                          //made to do intial cost
                    var beaverRCost = 10000;
                } else {
                    var beaverRCost = Math.floor(10 * Math.pow(1.1, autoRBeaver)) + 10000; //math.power(base, Exponent)
                }
                if (numLogs >= beaverRCost) {
                    autoRBeaver++;
                    numLogs = numLogs - beaverRCost;
                    document.getElementById('rBeaver').innerHTML = autoRBeaver;   //updates the number of autoSBeavers for the user
                    document.getElementById('logs').innerHTML = numLogs;        //updates total number of logs
                };
                var nextCost = Math.floor(10 * Math.pow(1.1, autoRBeaver)) + 10000;       //works out the cost of the next human
                document.getElementById('rBeaverCost').innerHTML = nextCost;
            }
        };
        // #endregion


        //function buyTechnology(num) {
            

        //    if (num == 0) {
        //        if (numLogs >= tech1.cost) {                   
        //            if (tech1.effect == true) {
        //                if (tech1.miner == "human") {
        //                    document.getElementById("hhhuman").style.display = "block";
        //                }
        //                if (tech1.miner == "beaver") {
        //                    document.getElementById("bbbeaver").style.display = "block";
        //                }
        //                if (tech1.miner == "sbeaver") {
        //                    document.getElementById("ssbeaver").style.display = "block";
        //                }
        //                if (tech1.miner == "gbeaver") {
        //                    document.getElementById("ggbeaver").style.display = "block";
        //                }
        //                if (tech1.miner == "rbeaver") {
        //                    document.getElementById("ccbeaver").style.display = "block";
        //                }
        //            } else {
        //                if (tech1.miner == "human") {
        //                    techHuman = techHuman + tech1.effect;
        //                }
        //                if (tech1.miner == "beaver") {
        //                    techBeaver = techBeaver + tech1.effect;
        //                }
        //                if (tech1.miner == "sBeaver") {
        //                    techSBeaver = techSBeaver + tech1.effect;
        //                }
        //                if (tech1.miner == "gBeaver") {
        //                    techGBeaver = techGBeaver + tech1.effect;
        //                }
        //                if (tech1.miner == "rBeaver") {
        //                    techRBeaver = techRBeaver + tech1.effect;
        //                }
        //            }


        //            tech1 = list.pop()
        //            document.getElementById("r0Name").innerHTML = tech1.name;
        //            document.getElementById("r0Cost").innerHTML = tech1.cost;
        //        }
        //    }
        //    if (num == 1) {

        //    }
        //    if (num == 2) {

        //    }
        //    if (num == 3) {

        //    }
        //    if (num == 4) {

        //    }
        //}
        var random_images_array = ["happy.gif", "sleeping.gif", "walking.gif"];

        function getRandomImage(imgAr, path) {
            path = path || '/wwwroot/css/images/'; // default path here
            var num = Math.floor( Math.random() * imgAr.length );
            var img = imgAr[ num ];
            var imgStr = '<img src="' + path + img + '" alt = "">';
            document.write(imgStr); document.close();
        }


        window.setInterval(function () {

            var stupid = autoHuman * autoHumanOutput;
            var moreStupid = autoBeaverOutput * autoBeaver;
            var evenMoreStupid = autoSBeaverOutput * autoSBeaver;
            var dumb = autoGBeaverOutput * autoGBeaver;
            var cool = autoRBeaverOutput * autoRBeaver;

            chopLog(stupid, moreStupid, evenMoreStupid, dumb, cool);
 
	
        }, 1000);

        //window.onload = function() {
        //    initalize(tech1, tech2, tech3, tech4, tech5);
        //};

        //function initalize(tech1, tech2, tech3, tech4, tech5){
        //    tech1 = list.pop()
        //            document.getElementById("r0Name").innerHTML = tech1.name;
        //            document.getElementById("r0Cost").innerHTML = tech1.cost;
        //    tech2 = list.pop()
        //            document.getElementById("r1Name").innerHTML = tech2.name;
        //            document.getElementById("r1Cost").innerHTML = tech2.cost;
        //    tech3 = list.pop()
        //            document.getElementById("r2Name").innerHTML = tech3.name;
        //            document.getElementById("r2Cost").innerHTML = tech3.cost;
        //    tech4 = list.pop()
        //            document.getElementById("r3Name").innerHTML = tech4.name;
        //            document.getElementById("r3Cost").innerHTML = tech4.cost;
        //    tech5 = list.pop()
        //            document.getElementById("r4Name").innerHTML = tech5.name;
        //            document.getElementById("r4Cost").innerHTML = tech5.cost;
        //}


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
                    <button id="cutWood" onclick="chopLog(1,0,0,0,0)">
                        Chop that Wood!
                    </button>
                    <span id="logCount" class="toolTipText"></span>
                    <p>Logs&trade;: 
                        <span id="logs">0</span>
                    <p>Logs per second:
                        <span id="logsS">0</span><br />
                    </p>
                </div>
            </div>
            <div class="column middle">
            <!-- Production -->
                <div class="production">
                    <p style="font-weight: bold; border-bottom: 2px solid black;" >Production</p>
                    <div id ="hhhuman" style="display:block;">
                        <span id="humanCount" class="toolTipText"></span>
                        <p>Humans: 
                            <span id="human">0</span><br />
                            Cost:
                            <span id="humanCost">10</span>
                        </p>                  
                        <button id="buyHuman" onclick="buyHuman()">
                        Hire more humans
                        </button>
                    </div>
                    <div id ="bbbeaver" style="display:block;">
                        <span id="beaverCount" class="toolTipText"></span>
                        <p>Beavers: 
                            <span id="beaver">0</span><br />
                            Cost:
                            <span id="beaverCost">1000</span>
                        </p>
                        <button id="buyBeaver" onclick="buyBeaver()">
                        Buy that Beaver
                        </button>
                    </div>
                    <div id ="ssBeaver" style="display:block;">
                        <span id="sBeaverCount" class="toolTipText"></span>
                        <p>Selectively Bred Beavers: 
                            <span id="sBeaver">0</span><br />
                            Cost:
                            <span id="sBeaverCost">5000</span>
                        </p>
                    
                        <button id="buySBeaver" onclick="buySBeaver()">
                        Buy Selectively Bred Beavers
                        </button>
                    </div>

                    <div id ="ggBeaver" style="display:block;">
                        <span id="gBeaverCount" class="toolTipText"></span>
                        <p>Genetically Modified Beavers: 
                            <span id="gBeaver">0</span><br />
                            Cost:
                            <span id="gBeaverCost">10000</span>
                        </p>
                        <button id="buyGBeaver" onclick="buyGBeaver()">
                        Buy Genetically Modified Beaver
                        </button>
                    </div>
                    <div id ="rrBeaver" style="display:block;">
                        <span id="rBeaverCount" class="toolTipText"></span>
                        <p>CYBORG BEAVERS: 
                            <span id="rBeaver">0</span><br />
                            Cost:
                            <span id="rBeaverCost">100000</span>
                        </p>
                        <button id="buyRBeaver" onclick="buyRBeaver()">
                        Buy Genetically Modified Beaver
                        </button>
                    </div>

                </div>
                </div>
            <div class="column middle2">
                <%--<p style="font-weight: bold; border-bottom: 2px solid black;" >Technologies</p>--%>
                <div id="image">
                    <script type="text/javascript">getRandomImage(random_images_array);</script>
                </div>
                <%--<div class="column rl">
                    <button class="techButton" id="0Name" onclick="buyTechnology(0)" style="vertical-align: 20%"><span id="r0Name"> </span><br /> <span id="r0Cost"> </span> Wood</button><br /><br />
                    <button class="techButton" id="1Name" onclick="buyTechnology(1)" style="vertical-align: 20%"><span id="r1Name"> </span><br /> <span id="r1Cost"> </span> </button><br /><br />
                    <button class="techButton" id="2Name" onclick="buyTechnology(2)" style="vertical-align: 20%"><span id="r2Name"> </span><br /> <span id="r2Cost"> </span> </button><br /><br />
                    <button class="techButton" id="3Name" onclick="buyTechnology(3)" style="vertical-align: 20%"><span id="r3Name"> </span><br /> <span id="r3Cost"> </span> </button><br /><br />
                    <button class="techButton" id="4Name" onclick="buyTechnology(4)" style="vertical-align: 20%"><span id="r4Name"> </span><br /> <span id="r4Cost"> </span> </button><br /><br />
                </div>--%>
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

