<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminhomepage.aspx.cs" Inherits="FCAProj.ADMIN_MDL.Adminhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <table class="nav-justified" style="width: 83%">
        <tr>
            <td style="height: 39px"></td>
            <td style="width: 184px; height: 39px"></td>
            <td style="width: 137px; height: 39px"></td>
            <td style="height: 39px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 184px">
                <asp:Label ID="Label1" runat="server" Text="GRAM'S RATE" Font-Size="XX-Large"></asp:Label>
            </td>
            <td style="width: 137px">
                <asp:Label ID="lbl_gramamt" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_change" runat="server" Text="Change" OnClick="btn_change_Click" />
                <table class="nav-justified">
                    <tr>
                        <td class="modal-sm" style="width: 132px">
                            <asp:TextBox ID="txt_gramamount" runat="server" placeholder="Today gram rate"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_ok" runat="server" OnClick="btn_ok_Click" Text="OK" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
