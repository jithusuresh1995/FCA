<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="GoldLoan.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.GoldLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">
                <asp:Label ID="Label1" runat="server" Text="Gold No"></asp:Label>
            </td>
            <td style="width: 163px">
                <asp:Label ID="lbl_goldno" runat="server"></asp:Label>
            </td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 140px"></td>
            <td class="modal-sm" style="width: 136px; height: 20px">
                <asp:Label ID="Label2" runat="server" Text="Account No"></asp:Label>
            </td>
            <td style="height: 20px; width: 163px">
                <asp:Label ID="lbl_accountno" runat="server"></asp:Label>
            </td>
            <td style="height: 20px; width: 81px"></td>
            <td style="height: 20px; width: 77px"></td>
            <td style="height: 20px; width: 95px"></td>
            <td style="height: 20px; width: 69px"></td>
            <td style="height: 20px; width: 71px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 140px"></td>
            <td class="modal-sm" style="width: 136px; height: 20px">
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="width: 163px; height: 20px">
                <asp:Label ID="lbl_cname" runat="server"></asp:Label>
            </td>
            <td style="height: 20px; width: 81px"></td>
            <td style="height: 20px; width: 77px"></td>
            <td style="height: 20px; width: 95px"></td>
            <td style="height: 20px; width: 69px"></td>
            <td style="height: 20px; width: 71px"></td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 22px;"></td>
            <td class="modal-sm" style="width: 136px; height: 22px;">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 163px; height: 22px;">
                <asp:Label ID="lbl_caddress" runat="server"></asp:Label>
            </td>
            <td style="width: 81px; height: 22px;"></td>
            <td style="width: 77px; height: 22px;"></td>
            <td style="width: 95px; height: 22px;"></td>
            <td style="width: 69px; height: 22px;"></td>
            <td style="width: 71px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">
                <asp:Label ID="Label7" runat="server" Text="Item"></asp:Label>
            </td>
            <td style="width: 163px">
                <asp:DropDownList ID="dd_Gitem" runat="server">
                </asp:DropDownList>
            </td>
            <td style="width: 81px">
                <asp:Label ID="Label8" runat="server" Text="Count"></asp:Label>
            </td>
            <td style="width: 77px">
                <asp:TextBox ID="txt_gcount" runat="server" Height="25px" Width="46px"></asp:TextBox>
            </td>
            <td style="width: 95px">
                <asp:Label ID="Label9" runat="server" Text="Weight"></asp:Label>
            </td>
            <td style="width: 77px">
                <asp:TextBox ID="txt_gweight" runat="server" Height="25px" Width="46px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 71px">
                <asp:Label ID="Label10" runat="server" Text="GM"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 48px;"></td>
            <td class="modal-sm" style="width: 136px; height: 48px;"></td>
            <td colspan="6" rowspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="573px">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
            <td style="height: 48px"></td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 24px;"></td>
            <td class="modal-sm" style="width: 136px; height: 24px;">
                <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>
            </td>
            <td style="width: 163px; height: 24px;">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width: 81px; height: 24px;"></td>
            <td style="width: 77px; height: 24px;"></td>
            <td style="width: 95px; height: 24px;"></td>
            <td style="width: 69px; height: 24px;"></td>
            <td style="width: 71px; height: 24px;"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_save" runat="server" Text="Save" />
            </td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 163px">&nbsp;</td>
            <td style="width: 81px">&nbsp;</td>
            <td style="width: 77px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 71px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
