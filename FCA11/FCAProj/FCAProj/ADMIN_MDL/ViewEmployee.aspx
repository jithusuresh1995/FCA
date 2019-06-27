<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewEmployee.aspx.cs" Inherits="FCAProj.ADMIN_MDL.ViewEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 406px">
        <tr>
            <td style="width: 120px; height: 69px;"></td>
            <td style="height: 69px"></td>
            <td style="height: 69px"></td>
        </tr>
        <tr>
            <td style="width: 120px; height: 66px;"></td>
            <td style="height: 66px; font-size: medium; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VIEW EMPLOYEE</td>
            <td style="height: 66px"></td>
        </tr>
        <tr>
            <td style="width: 120px">&nbsp;</td>
            <td>
                <asp:GridView ID="Gridviewemployee" runat="server" AutoGenerateColumns="False" OnRowCommand="Gridviewemployee_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" Width="856px">

                      
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                      
           <Columns>
                <asp:BoundField DataField="Branch_name" HeaderText ="Branch">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="E_name" HeaderText ="Name">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="E_address" HeaderText ="Addresss">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="E_gender" HeaderText ="Gender" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="E_dob" HeaderText ="Dob">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
              
            <asp:BoundField DataField="E_phone" HeaderText ="Phone" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="E_email" HeaderText ="Email" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="E_designation" HeaderText ="Designation" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
              </asp:BoundField>
               
                <asp:TemplateField ShowHeader="False">
                    <HeaderTemplate>
                        Photo
                    </HeaderTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("E_photo") %>' Hight="50px" Width="50px "/>
            </ItemTemplate>
        </asp:TemplateField>
                          <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Update"
                    Text="Update" CommandArgument='<%# Eval("Emp_id") %>' />
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 120px; height: 26px;"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 120px; height: 240px;"></td>
            <td style="height: 240px"></td>
            <td style="height: 240px"></td>
        </tr>
    </table>
</asp:Content>
