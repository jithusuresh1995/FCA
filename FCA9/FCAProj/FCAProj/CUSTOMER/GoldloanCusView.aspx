<%@ Page Title="" Language="C#" MasterPageFile="~/CUSTOMER/Customer.Master" AutoEventWireup="true" CodeBehind="GoldloanCusView.aspx.cs" Inherits="FCAProj.CUSTOMER.GoldloanCusView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 279px; height: 107px;"></td>
            <td style="height: 107px" class="text-left">
                <asp:Label ID="Label1" runat="server" Text="GOLD LOAN DETAILS" Font-Size="X-Large" Font-Italic="true" ForeColor="SandyBrown"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 279px; height: 158px;"></td>
            <td style="height: 158px">
                <asp:GridView ID="GridgoldloanCus" runat="server" AutoGenerateColumns="False" OnRowCommand="GridgoldloanCus_RowCommand" OnSelectedIndexChanged="GridgoldloanCus_SelectedIndexChanged">

                    <Columns>
            <asp:BoundField DataField="Goldno" HeaderText ="Gold No">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="Date" HeaderText ="Date">
                
              <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="LoanAmount" HeaderText ="Amount" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                         <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="View"
                    Text="View Details" CommandArgument='<%# Eval("Goldno") %>'  />
            </ItemTemplate>
        </asp:TemplateField>
             
        </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 279px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 279px">&nbsp;</td>
            <td>
                <asp:GridView ID="Gridinterstdetails" runat="server" AutoGenerateColumns="False">
                     <Columns>
            <asp:BoundField DataField="Creditamount" HeaderText =" Credit Amount">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="PaidAmount" HeaderText ="Debit">
                
              <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="Date" HeaderText ="Date" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
             <asp:BoundField DataField="Amount_to_pay" HeaderText ="Amount To Pay" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                        
                        
             
        </Columns>

                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 279px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 279px">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_topaid" runat="server" Text="Amount to be  paid"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_amount_tobe_paid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 279px; height: 31px;"></td>
            <td style="height: 31px">
                <asp:Label ID="lbl_amtpaid" runat="server" Text="Payment Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_paidamount" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_paidamount" ErrorMessage="Please enter the amount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 279px">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_pay" runat="server" Text="Pay" OnClick="btn_pay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
