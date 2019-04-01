<%@ Page Title="" Language="C#" MasterPageFile="~/MANAGER/Manager.Master" AutoEventWireup="true" CodeBehind="ChitFunds.aspx.cs" Inherits="FCAProj.MANAGER.ChitFunds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">
                <asp:Label ID="lbl_chitname" runat="server" Text="Chit Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_chitname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px;"></td>
            <td style="height: 22px; width: 184px;">
                <asp:Label ID="lbl_chitno" runat="server" Text="Chit No"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_chitno" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">
                <asp:Label ID="lbl_chitamt" runat="server" Text="Chit Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_chitamount" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">
                <asp:Label ID="lbl_installamt" runat="server" Text="Installment Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_installamt" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">
                <asp:Label ID="lbl_tenure" runat="server" Text="Tenure"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_tenure" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px"></td>
            <td style="width: 184px; height: 22px">
                <asp:Label ID="lbl_details" runat="server" Text="Details"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_details" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px"></td>
            <td style="width: 184px; height: 22px">
                <asp:Label ID="lbl_cstartdate" runat="server" Text="Start Date"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_startdate" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td style="width: 184px; height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Reset" runat="server" Text="Reset" />
&nbsp;
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
            </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td style="width: 184px; height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 184px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
