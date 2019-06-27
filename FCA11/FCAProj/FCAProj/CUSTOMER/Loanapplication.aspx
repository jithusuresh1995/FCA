<%@ Page Title="" Language="C#" MasterPageFile="~/CUSTOMER/Customer.Master" AutoEventWireup="true" CodeBehind="Loanapplication.aspx.cs" Inherits="FCAProj.CUSTOMER.Loanapplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="height: 84px"></td>
            <td style="width: 203px; height: 84px"></td>
            <td style="width: 229px; height: 84px"></td>
            <td style="height: 84px"></td>
        </tr>
        <tr>
            <td style="height: 65px"></td>
            <td colspan="2" style="height: 65px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOAN APPLICATION</td>
            <td style="height: 65px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">
                <asp:Label ID="Label1" runat="server" Text="Loan Type"></asp:Label>
            </td>
            <td style="width: 229px">
                <asp:DropDownList ID="dd_ltype" runat="server" Width="150px">
                   <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Personal Loan</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 203px;">
                <asp:Label ID="Label2" runat="server" Text="Loan Amount"></asp:Label>
            </td>
            <td style="height: 20px; width: 229px;">
                <asp:TextBox ID="txt_lamount" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">
                <asp:Label ID="Label3" runat="server" Text="Duration"></asp:Label>
            </td>
            <td style="width: 229px">
                <asp:TextBox ID="txt_lduration" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 203px;">
                <asp:Label ID="Label4" runat="server" Text="Loan Purpose"></asp:Label>
            </td>
            <td style="height: 20px; width: 229px;">
                <asp:TextBox ID="txt_lpurpose" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 203px;">
                <asp:Label ID="Label5" runat="server" Text="Guranter"></asp:Label>
            </td>
            <td style="height: 20px; width: 229px;">
                <asp:TextBox ID="txt_guranter" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 229px">
                <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 203px;">
                <asp:Label ID="Label10" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td style="height: 20px; width: 229px;">
                <asp:TextBox ID="txt_phone" runat="server" TextMode="Phone" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">
                <asp:Label ID="Label8" runat="server" Text="Id Proof"></asp:Label>
            </td>
            <td style="width: 229px">
                <asp:DropDownList ID="dd_idproof" runat="server" Width="150px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Aadhar</asp:ListItem>
                    <asp:ListItem>Licence</asp:ListItem>
                    <asp:ListItem>Pan card</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">
                <asp:Label ID="Label9" runat="server" Text="Proof No"></asp:Label>
            </td>
            <td style="width: 229px">
                <asp:TextBox ID="txt_proofno" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_apply" runat="server" Text="Apply" OnClick="btn_apply_Click" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">&nbsp;</td>
            <td style="width: 229px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 203px">&nbsp;</td>
            <td style="width: 229px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
