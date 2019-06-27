<%@ Page Title="" Language="C#" MasterPageFile="~/MANAGER/Manager.Master" AutoEventWireup="true" CodeBehind="LoanType.aspx.cs" Inherits="FCAProj.MANAGER.LoanType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="font-size: large; font-style: italic; color: #000080;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADD LOANS&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">
                <asp:Label ID="lbl_lname" runat="server" Text="Loan Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">
                <asp:Label ID="lbl_ldetails" runat="server" Text="Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_ldetails" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 243px"></td>
            <td style="height: 22px; width: 190px">
                <asp:Label ID="lbl_linterest" runat="server" Text="Interest Rate"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_linterest" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 243px; height: 24px;"></td>
            <td style="width: 190px; height: 24px;">
                <asp:Label ID="lbl_minamt" runat="server" Text="Minimum Amount"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txt_Lminamt" runat="server"></asp:TextBox>
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 243px"></td>
            <td style="height: 22px; width: 190px">
                <asp:Label ID="lbl_maxamt" runat="server" Text="Maximum Amount"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_Lmaxamt" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">
                <asp:Label ID="lbl_minduration" runat="server" Text="Minimum Duration"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Lminduration" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 243px"></td>
            <td style="height: 22px; width: 190px">
                <asp:Label ID="lbl_maxduration" runat="server" Text="Maximum Duration"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_Lmaxduration" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 108px; width: 243px;"></td>
            <td style="height: 108px; width: 190px;">&nbsp;</td>
            <td style="height: 108px"></td>
            <td style="height: 108px"></td>
        </tr>
    </table>
</asp:Content>
