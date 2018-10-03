<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contact.ascx.cs" Inherits="TheLoggingCompanyProject.Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <label for="firstName" id="firstNameLabel" runat="server">First Name:</label>
        <input type="text" id="firstName" name="firstName" runat="server" />

        <input type="submit" id="submit" name="submit" value="Press it!" />
    </form>
</body>
</html>