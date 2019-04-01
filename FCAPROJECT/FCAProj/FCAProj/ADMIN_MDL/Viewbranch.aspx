<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Viewbranch.aspx.cs" Inherits="FCAProj.ADMIN_MDL.Viewbranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">
                &nbsp;</td>
            <td style="width: 587px">
                <div class="text-center">
                <asp:GridView ID="Gridviewbranch" runat="server" AutoGenerateColumns="False" Height="16px" Width="564px">
        <Columns>
            <asp:BoundField DataField="Branch_name" HeaderText ="Name">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="Branch_address" HeaderText ="Addresss">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="Branch_district" HeaderText ="District" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="Branch_city" HeaderText ="City">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
             <asp:BoundField DataField="Branch_Zipcode" HeaderText ="Zipcode" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
            <asp:BoundField DataField="Branch_phone" HeaderText ="Phone" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="Branch_email" HeaderText ="Email" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
        </Columns>
    </asp:GridView>
                </div>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
