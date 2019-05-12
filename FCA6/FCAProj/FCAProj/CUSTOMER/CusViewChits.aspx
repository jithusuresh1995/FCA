<%@ Page Title="" Language="C#" MasterPageFile="~/CUSTOMER/Customer.Master" AutoEventWireup="true" CodeBehind="CusViewChits.aspx.cs" Inherits="FCAProj.CUSTOMER.CusViewChits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="Gridcuschitview" runat="server" AutoGenerateColumns="False" style="margin-left: 230px; margin-top: 89px">

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
           
                </Columns>
   
    </asp:GridView>

</asp:Content>
