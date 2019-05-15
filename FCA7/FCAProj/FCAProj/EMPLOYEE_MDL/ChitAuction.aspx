<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="ChitAuction.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.ChitAuction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 145px; height: 71px"></td>
            <td style="width: 152px; height: 71px;"></td>
            <td style="width: 187px; height: 71px;"></td>
            <td style="width: 121px; height: 71px;"></td>
            <td style="width: 135px; height: 71px;"></td>
            <td style="height: 71px"></td>
            <td style="height: 71px"></td>
            <td style="height: 71px"></td>
        </tr>
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 152px">&nbsp;</td>
            <td colspan="3" rowspan="2" style="font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;CHIT AUCTION&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 152px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 152px">
                <asp:Label ID="Label1" runat="server" Text="ChitNo"></asp:Label>
            </td>
            <td style="width: 187px">
                <asp:DropDownList ID="dd_Chitno" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd_Chitno_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 121px">&nbsp;</td>
            <td style="width: 135px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 145px;"></td>
            <td style="width: 152px; height: 22px">
                <asp:Label ID="Label2" runat="server" Text="Installment No"></asp:Label>
            </td>
            <td style="height: 30px; width: 187px">
                <asp:TextBox ID="txt_installno" runat="server" Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 121px"></td>
            <td style="height: 22px; width: 135px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 30px; width: 145px;"></td>
            <td style="width: 152px; height: 30px">
                <asp:Label ID="Label3" runat="server" Text="Start at"></asp:Label>
            </td>
            <td style="height: 30px; width: 187px">
                <asp:TextBox ID="txt_startdate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 121px">
                <asp:TextBox ID="txt_stime" runat="server" TextMode="Time"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 135px">
                &nbsp;</td>
            <td style="height: 30px">
                &nbsp;</td>
            <td style="height: 30px"></td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 30px; width: 145px;"></td>
            <td style="width: 152px; height: 30px">
                <asp:Label ID="Label4" runat="server" Text="Close Date"></asp:Label>
            </td>
            <td style="width: 187px; height: 30px">
                <asp:TextBox ID="txt_closedate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 121px">
                <asp:TextBox ID="txt_ctime" runat="server" TextMode="Time"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 135px">
                &nbsp;</td>
            <td style="height: 30px">
                &nbsp;</td>
            <td style="height: 30px"></td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 145px;"></td>
            <td colspan="5" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_auctionopen" runat="server" OnClick="btn_auctionopen_Click" Text="Save" />
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 145px;"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 152px">&nbsp;</td>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 121px">&nbsp;</td>
            <td style="width: 135px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 152px">&nbsp;</td>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 121px">&nbsp;</td>
            <td style="width: 135px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
