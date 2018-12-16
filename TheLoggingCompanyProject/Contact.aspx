<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TheLoggingCompanyProject.Contact" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<script>
	function Initialize() {
		DetectJs();
	}

	function ValidateForm() {
		if (document.forms["form2"]["firstName"].value == "") {
			document.getElementById("firstName").style.color = "red";
			document.getElementById("firstNamelabel").style.color = "red";
            alert("first name");
            return false;
		} else {
            document.forms["form2"].action = "Contact.aspx";
            return true;
		}
	}
	
	function DetectJs() {
	document.getElementById("noJs").style.display = "none";
	}
	
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css"/>
    <title>The Logging Company</title>

    <script runat="server">

        void Button_Click(Object sender, EventArgs e) 
        {
            if (Page.IsValid)
            {
            MessageLabel.Text = "Page submitted successfully.";
            }
        else
            {
            MessageLabel.Text = "There is an error on the page.";
            }
         }

    </script>
</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="form" style="background-color: white;">
        <div class="contactTitle">
            <h3 style="text-align: center; font-weight: bold;">Tell us how we're doing!</h3>
        </div>
        <form style="text-align: left; padding-left: 130px;" id="form2" runat="server">    

        <label for="firstName" id="firstNamelabel" runat="server">First Name:</label>
        <asp:TextBox id="firstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" 
            display="Dynamic"
            ErrorMessage="Please enter your first name" 
            ControlToValidate="firstName">
        </asp:RequiredFieldValidator>
         
        <label for="lastName" id="Label2" runat="server">Last Name:</label>
        <asp:TextBox id="lastName" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" 
            display="Dynamic"
            ErrorMessage="Please enter your last name"  
            ControlToValidate="lastName">
        </asp:RequiredFieldValidator>
                <br />

        <label for="email" id="Label3" runat="server">Email:</label>
        <asp:TextBox id="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" 
            display="Dynamic"
            ErrorMessage="Please enter your email"  
            ControlToValidate="email">
        </asp:RequiredFieldValidator>

        <label for="ssn" id="Label4" runat="server">Social Security Number:</label>
        <asp:TextBox id="ssn" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" 
            display="Dynamic"
            ErrorMessage="Please enter your Social Security number"  
            ControlToValidate="ssn">
        </asp:RequiredFieldValidator>
        <br />
                
        <label for="misc" id="Label6" runat="server">Check all that apply: </label><br/>
        <input type="checkbox" name="check1" value="check"/> I loved this game!<br/>
        <input type="checkbox" name="check2" value="Check"/> I want MORE microtransactions<br/>
        <input type="checkbox" name="check3" value="Check"/> I want to meet Chad<br/>
        <input type="checkbox" name="check4" value="Check"/> I want to be sent promotional material from ALL the internet!<br/>
        <input type="checkbox" name="check5" value="Check"/> No.<br/><br/>

        <label for="feedback" id="Label5" runat="server">Feedback:</label><br/>
        <textarea name="message" rows="10" cols="80">Why is our game so great?!  Tell us here!</textarea><br/><br/>

        <asp:button id="SubmitButton"
        text="Submit"
        onclick="Button_Click"
        runat="server"/><br/><br/>

        <asp:label id="MessageLabel" 
        runat="server"/><br/><br/>

        <asp:validationsummary
        id="ErrorSummary"
        runat="server"/>
    </form>
    </div>
    <template:footerControl id="footerHtml" asdf="Default.aspx" runat="server" />
</body>
</html>