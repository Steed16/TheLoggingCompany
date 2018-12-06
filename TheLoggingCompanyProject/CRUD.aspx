<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="TheLoggingCompanyProject.CRUD" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="uIndex" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Id (only use to delete)" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Product Name" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPname" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Price" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPrice" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button Text="Save" ID="btnSave" runat="server" OnClick="btnSave_Click" />
                        <asp:Button Text="Delete" ID="btnDelete" runat="server" OnClick="btnDelete_Click" />
                        <asp:Button Text="Clear" ID="btnClear" runat="server" OnClick="btnClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label Text="" ID="lblSuccessMessage" runat="server" Forecolor="Green" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label Text="" ID="lblErrorMessage" runat="server" Forecolor="Red" />
                    </td>
                </tr>
            </table>
            <br/. />
            <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton Text="Select" ID="lnkSelect" CommandArgument='<%# Eval("UserID") %>' runat="server" OnClick="lnkSelect_OnClick" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
