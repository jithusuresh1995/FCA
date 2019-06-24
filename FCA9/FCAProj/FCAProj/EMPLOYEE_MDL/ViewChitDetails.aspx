<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE_MDL/Employee.Master" AutoEventWireup="true" CodeBehind="ViewChitDetails.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.ViewChitDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    

    <table class="nav-justified">
        <tr>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHIT MEMBERS&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridviewChitdetails" runat="server" AutoGenerateColumns="False" style="margin-left: 186px; margin-top: 74px">

         <Columns>
            <asp:BoundField DataField="Chit_No" HeaderText ="Chit_No">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="Chit_amount" HeaderText ="Chit_amount ">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <asp:BoundField DataField="Date" HeaderText =" Starting Date ">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="Account_No" HeaderText ="Account_No" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="C_name" HeaderText ="Customer name">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
           
            
        </Columns>
    </asp:GridView>

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>


    

</asp:Content>
