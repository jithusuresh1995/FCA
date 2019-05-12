<%@ Page Title="" Language="C#" MasterPageFile="~/CUSTOMER/Customer.Master" AutoEventWireup="true" CodeBehind="ChitInstallmentpay.aspx.cs" Inherits="FCAProj.CUSTOMER.ChitInstallmentpay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 157px">
                <asp:Label ID="Label1" runat="server" Text="Chit No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_chitno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 157px">
                <asp:Label ID="Label2" runat="server" Text="Installment No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_installno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 157px">
                <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_amount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>
