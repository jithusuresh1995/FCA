<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="ViewbidDetails.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.ViewbidDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 204px; height: 68px"></td>
            <td style="width: 418px; height: 68px;"></td>
            <td style="height: 68px"></td>
            <td style="height: 68px"></td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td colspan="2" style="font-size: large; font-style: italic; color: #000080; font-weight: bold">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="AUCTION  BID DETALS"></asp:Label>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="ChitNo"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dd_chitnum" runat="server" OnSelectedIndexChanged="dd_chitnum_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="InstallmentNo"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dd_chitinstall" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd_chitinstall_SelectedIndexChanged">
                </asp:DropDownList>
            &nbsp;
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 204px; height: 20px"></td>
            <td style="width: 418px; height: 20px;"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td style="width: 418px" class="modal-sm">
                <asp:GridView ID="GridViewbid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 95px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                     <Columns>
            <asp:BoundField DataField="C_name" HeaderText ="Name">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="C_email" HeaderText ="Email">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="Chit_amount" HeaderText ="Chit_amount" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
             <asp:BoundField DataField="BidAmount" HeaderText ="BidAmount" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

            
           
                </Columns>
                </asp:GridView>
            </td>
            <td>   <asp:Button ID="btn_select" runat="server" OnClick="btn_select_Click" Text="Grand Auction" visible="false"/>   &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td style="width: 418px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td style="width: 418px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
