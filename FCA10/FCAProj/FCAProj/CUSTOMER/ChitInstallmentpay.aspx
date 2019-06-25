<%@ Page Title="" Language="C#" MasterPageFile="~/CUSTOMER/Customer.Master" AutoEventWireup="true" CodeBehind="ChitInstallmentpay.aspx.cs" Inherits="FCAProj.CUSTOMER.ChitInstallmentpay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px; height: 74px;"></td>
            <td style="font-size: medium; font-weight: bold; height: 74px;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHIT&nbsp; INSTALLMENT&nbsp;</td>
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
            <td style="width: 293px; height: 29px;"></td>
            <td style="width: 157px; height: 29px;"></td>
            <td style="height: 29px">
                <asp:Button ID="btn_pay" runat="server" Text="Pay" OnClick="btn_pay_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 293px; height: 211px;"></td>
            <td style="width: 157px; height: 211px;"></td>
            <td style="height: 211px">
            </td>
        </tr>
    </table>
</asp:Content>
