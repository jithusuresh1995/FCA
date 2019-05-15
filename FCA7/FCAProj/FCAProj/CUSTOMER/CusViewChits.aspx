<%@ Page Title="" Language="C#" MasterPageFile="~/CUSTOMER/Customer.Master" AutoEventWireup="true" CodeBehind="CusViewChits.aspx.cs" Inherits="FCAProj.CUSTOMER.CusViewChits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   

    <table class="nav-justified">
        <tr>
            <td style="height: 54px"></td>
        </tr>
        <tr>
            <td style="font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHIT DETAILS&nbsp;</td>
        </tr>
        <tr>
            <td>
                 <asp:GridView ID="Gridcuschitview" runat="server" AutoGenerateColumns="False" style="margin-left: 362px; margin-top: 89px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="Gridcuschitview_RowCommand" OnSelectedIndexChanged="Gridcuschitview_SelectedIndexChanged">

                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

        <Columns>
            <asp:BoundField DataField="Chit_No" HeaderText ="Chit No">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="Chit_amount" HeaderText ="Amount">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="chit_Stardate" HeaderText ="Start date" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

            <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Auction"
                    Text="Make Auction" OnClick="btn_auctionopen_Click" />
            </ItemTemplate>
                </asp:TemplateField>
             <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="inst"
                    Text="Chit Installment" CommandArgument='<%# Eval("Chit_No") %>' />
            </ItemTemplate>
                </asp:TemplateField>
           
                </Columns>
   
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
   
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

   

</asp:Content>
