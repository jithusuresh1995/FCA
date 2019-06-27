<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="GoldLoan.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.GoldLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table class="nav-justified"  style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px; " >
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 68px">&nbsp;</td>
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 22px;"></td>
            <td class="modal-sm" colspan="8" rowspan="2" style="font-size: large; font-style: italic; font-weight: bold; color: #000080;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; GOLD LOAN&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">
                <asp:Label ID="Label1" runat="server" Text="Gold No"></asp:Label>
            </td>
            <td style="width: 68px">
                <asp:Label ID="lbl_goldno" runat="server"></asp:Label>
            </td>
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">
                &nbsp;</td>
            <td style="width: 68px">
                &nbsp;</td>
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 140px"></td>
            <td class="modal-sm" style="width: 136px; height: 20px">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 20px; width: 68px">
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px; width: 87px">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td style="height: 20px; width: 73px">
                <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px; width: 95px">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="height: 20px; width: 69px">
                &nbsp;</td>
            <td style="height: 20px; width: 26px"></td>
            <td style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 140px"></td>
            <td class="modal-sm" style="width: 136px; height: 20px">
                <asp:Label ID="Label13" runat="server" Text="AccountNo"></asp:Label>
            </td>
            <td style="width: 68px; height: 20px">
                <asp:TextBox ID="txt_accountno" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px; " colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Search" />
            </td>
            <td style="height: 20px; width: 95px"></td>
            <td style="height: 20px; width: 69px"></td>
            <td style="height: 20px; width: 26px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px; height: 20px">
                &nbsp;</td>
            <td style="width: 68px; height: 20px">
                &nbsp;</td>
            <td style="height: 20px; width: 87px">&nbsp;</td>
            <td style="height: 20px; width: 73px">&nbsp;</td>
            <td style="height: 20px; width: 95px">&nbsp;</td>
            <td style="height: 20px; width: 69px">&nbsp;</td>
            <td style="height: 20px; width: 26px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 22px;"></td>
            <td class="modal-sm" style="width: 136px; height: 22px;">
                &nbsp;</td>
            <td style="height: 22px;" colspan="5">
                <div id="dvGridCusDisplay" runat="server" visible="false">
                <asp:GridView ID="Gridcusdisplay" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="397px" OnRowCommand="Gridcusdisplay_RowCommand">

                    <Columns>
            <asp:BoundField DataField="C_name" HeaderText ="Name">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="C_addrress" HeaderText ="Addresss">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="C_phone" HeaderText ="PhoneNo" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select"
                    Text="Select" CommandArgument='<%#Eval("C_id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
            
             
        </Columns>
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
                </asp:GridView>
                </div>
            </td>
            <td style="width: 26px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 68px">&nbsp;</td>
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td colspan="8">
                <asp:Label ID="Label7" runat="server" Text="Item"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dd_Gitem" runat="server">
                    <asp:ListItem>--Select---</asp:ListItem>
                    <asp:ListItem>Ring</asp:ListItem>
                    <asp:ListItem>Bangle</asp:ListItem>
                    <asp:ListItem>Chain</asp:ListItem>
                    <asp:ListItem>Anklet</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Count"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_gcount" runat="server" Height="25px" Width="46px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Weight"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_gweight" runat="server" Height="25px" Width="46px"></asp:TextBox>
                GM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 68px">&nbsp;</td>
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 48px;"></td>
            <td class="modal-sm" style="width: 136px; height: 48px;"></td>
            <td colspan="6" rowspan="3">
                <asp:GridView ID="Gridgolditem" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="479px" ForeColor="#333333" GridLines="None" OnRowCommand="Gridgolditem_RowCommand" OnSelectedIndexChanged="Gridgolditem_SelectedIndexChanged">

                    <Columns>
            <asp:BoundField DataField="Item_name" HeaderText ="Item Name">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="Count" HeaderText ="Count">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="Weight" HeaderText ="Weight" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

                         <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Remove"
                    Text="Remove" CommandArgument='<%#Eval("Item_id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
            
             
        </Columns>
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
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
            <td style="width: 68px">&nbsp;</td>
            <td style="width: 87px">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label14" runat="server" Text="Total"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_totalgram" runat="server"></asp:TextBox>
            </td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 24px;"></td>
            <td class="modal-sm" style="width: 136px; height: 24px;">
                <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>
            </td>
            <td style="width: 68px; height: 24px;">
                <asp:TextBox ID="txt_grandamount" runat="server"></asp:TextBox>
            </td>
            <td style="width: 87px; height: 24px;"></td>
            <td style="width: 73px; height: 24px;"></td>
            <td style="width: 95px; height: 24px;"></td>
            <td style="width: 69px; height: 24px;"></td>
            <td style="width: 26px; height: 24px;"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" />
            </td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td class="modal-sm" style="width: 136px">&nbsp;</td>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 69px">&nbsp;</td>
            <td style="width: 26px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px; height: 133px;"></td>
            <td class="modal-sm" style="width: 136px; height: 133px;"></td>
            <td style="width: 68px; height: 133px;"></td>
            <td style="width: 87px; height: 133px;"></td>
            <td style="width: 73px; height: 133px;"></td>
            <td style="width: 95px; height: 133px;"></td>
            <td style="width: 69px; height: 133px;"></td>
            <td style="width: 26px; height: 133px;"></td>
            <td style="height: 133px"></td>
        </tr>
    </table>
</asp:Content>
