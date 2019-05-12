<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Chitsadd.aspx.cs" Inherits="FCAProj.ADMIN_MDL.Chitsadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 148px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 148px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 148px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 148px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px;"></td>
            <td style="height: 22px; width: 148px;">
                <asp:Label ID="lbl_chitno" runat="server" Text="Chit No"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:Label ID="lbl_chitnum" runat="server" Width="150px"></asp:Label>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 291px; height: 24px;"></td>
            <td style="width: 148px; height: 24px;">
                <asp:Label ID="lbl_chitamt" runat="server" Text="Chit Amount"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txt_chitamount" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 291px; height: 24px;"></td>
            <td style="width: 148px; height: 24px;">
                <asp:Label ID="lbl_installamt" runat="server" Text="Installment Amount"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txt_installamt" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 291px; height: 24px;"></td>
            <td style="width: 148px; height: 24px;">
                <asp:Label ID="lbl_tenure" runat="server" Text="Tenure"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txt_tenure" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px"></td>
            <td style="width: 148px; height: 22px">
                <asp:Label ID="lbl_details" runat="server" Text="Details"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_details" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px"></td>
            <td style="width: 148px; height: 22px">
                <asp:Label ID="lbl_cstartdate" runat="server" Text="Start Date"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txt_startdate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td style="width: 148px; height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
                <asp:Button ID="btn_save"  runat="server" OnClick="btn_save_Click" Text="Save"  />
            </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 291px">&nbsp;</td>
            <td style="width: 148px; height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 148px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
