<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="Chitmemberdetails.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.Chitmemberdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 221px; height: 118px"></td>
            <td style="width: 240px; height: 118px"></td>
            <td style="height: 118px"></td>
            <td style="height: 118px"></td>
        </tr>
        <tr>
            <td style="width: 221px">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Chit Member"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 221px">&nbsp;</td>
            <td style="width: 240px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 221px">&nbsp;</td>
            <td style="width: 240px">
                <asp:Label ID="Label1" runat="server" Text="Chit No"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dd_chitnumber" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 221px"></td>
            <td style="width: 240px; height: 20px">
                <asp:Label ID="Label2" runat="server" Text="Customer"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="dd_customer" runat="server">
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 221px">&nbsp;</td>
            <td style="width: 240px">
                <asp:Label ID="Label3" runat="server" Text="Join Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_joindate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 221px">&nbsp;</td>
            <td colspan="2" rowspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_add" runat="server" Text="Add" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 221px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 221px; height: 274px;"></td>
            <td style="width: 240px; height: 274px;"></td>
            <td style="height: 274px"></td>
            <td style="height: 274px"></td>
        </tr>
    </table>
</asp:Content>
