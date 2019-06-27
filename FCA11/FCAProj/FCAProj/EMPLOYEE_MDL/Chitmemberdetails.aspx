<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="Chitmemberdetails.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.Chitmemberdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 282px; height: 118px"></td>
            <td style="width: 116px; height: 118px"></td>
            <td style="height: 118px"></td>
            <td style="height: 118px"></td>
        </tr>
        <tr>
            <td colspan="3" style="font-size: large; font-weight: bold; font-style: italic; color: #000080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CHIT MEMBER</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td style="width: 116px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td style="width: 116px">
                <asp:Label ID="Label1" runat="server" Text="Chit No"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dd_chitnumber" runat="server" Width="150px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 282px"></td>
            <td style="width: 116px; height: 20px">
                <asp:Label ID="Label2" runat="server" Text="Customer"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="dd_customer" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td style="width: 116px">
                <asp:Label ID="Label3" runat="server" Text="Join Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_joindate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td colspan="2" rowspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px; height: 274px;"></td>
            <td style="width: 116px; height: 274px;"></td>
            <td style="height: 274px"></td>
            <td style="height: 274px"></td>
        </tr>
    </table>
</asp:Content>
