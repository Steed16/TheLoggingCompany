<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TheLoggingCompanyProject.Contact" %>
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
    
    <div class="form">
        <form id="form2" runat="server">
        <label for="firstName" id="Label1" runat="server">First Name:</label>
        <input type="text" id="Text1" name="firstName" runat="server" /><br/>

        <label for="lastName" id="Label2" runat="server">Last Name:</label>
        <input type="text" id="Text2" name="lastName" runat="server" /><br/>

        <label for="email" id="Label3" runat="server">Email:</label>
        <input type="text" id="Text3" name="email" runat="server" /><br/>

        <label for="ssn" id="Label4" runat="server">Social Security Number:</label>
        <input type="text" id="Text4" name="ssn" runat="server" /><br/><br/>

        <label for="misc" id="Label6" runat="server">Misc. Check all that apply:</label><br/>
        <input type="checkbox" name="check1" value="check"/> I loved this game!<br/>
        <input type="checkbox" name="check2" value="Check"/> I want MORE microtransactions<br/>
        <input type="checkbox" name="check3" value="Check"/> I want to meet Chad<br/>
        <input type="checkbox" name="check4" value="Check"/> I want to be sent promotional material from ALL the internet!<br/>
        <input type="checkbox" name="check5" value="Check"/> No.<br/><br/>

        <label for="feedback" id="Label5" runat="server">Feedback:</label><br/>
        <textarea name="message" rows="10" cols="30">Why is our game so great?!  Tell us here!</textarea><br/><br/><br/>

        <input type="submit" id="submit" name="submit" value="Press it!" />
    </form>
    </div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>