<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BranchRegistration.aspx.cs" Inherits="FCAProj.ADMIN_MDL.BranchRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table  style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 296px;"></td>
            <td style="height: 23px; width: 141px;"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 296px;"></td>
            <td colspan="2" rowspan="2" style="font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BRANCH&nbsp; REGISTRATION</td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 296px;">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 296px;"></td>
            <td style="height: 23px; width: 141px;"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 296px; height: 24px"></td>
            <td id="lblb_name" class="modal-sm" style="width: 141px; height: 24px">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtbname" runat="server" OnTextChanged="TextBox1_TextChanged" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbname" ErrorMessage="Please enter the name"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 24px"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td id="lblb_address" class="modal-sm" style="width: 141px">
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_address" runat="server" TextMode="MultiLine" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtb_address" ErrorMessage="Please enter the address"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="Label3" runat="server" Text="District"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddb_district" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddb_district_SelectedIndexChanged" Width="190px">
                    <asp:ListItem Value="0">---Select---</asp:ListItem>
                    <asp:ListItem Value="1">Thiruvanandhapuram</asp:ListItem>
                    <asp:ListItem Value="2">Kollam</asp:ListItem>
                    <asp:ListItem Value="3">Pathanamthitta</asp:ListItem>
                    <asp:ListItem Value="4">Alapuzha</asp:ListItem>
                    <asp:ListItem Value="5">Kottayam</asp:ListItem>
                    <asp:ListItem Value="6">Idukki</asp:ListItem>
                    <asp:ListItem Value="7">Eranakulam</asp:ListItem>
                    <asp:ListItem Value="8">Trissur</asp:ListItem>
                    <asp:ListItem Value="9">Palakad</asp:ListItem>
                    <asp:ListItem Value="10">Malapuram</asp:ListItem>
                    <asp:ListItem Value="11">Kozhikode</asp:ListItem>
                    <asp:ListItem Value="12">Wayanad</asp:ListItem>
                    <asp:ListItem Value="13">Kannur</asp:ListItem>
                    <asp:ListItem Value="14">Kasargode</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddb_district" ErrorMessage="Please select the district"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="lblb_city" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddb_city" runat="server" Width="190px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddb_city" ErrorMessage="Please select the city"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px; height: 28px;"></td>
            <td class="modal-sm" style="width: 141px; height: 28px;">
                <asp:Label ID="lblb_zipcode" runat="server" Text="Zipcode"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:TextBox ID="txtb_zipcode" runat="server" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtb_zipcode" ErrorMessage="Please enter the zipcode"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 28px"></td>
            <td style="height: 28px"></td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="lblb_date" runat="server" Text="Opening Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_date" runat="server" TextMode="Date" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtb_date" ErrorMessage="Select the date"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="lblb_phone" runat="server" Text="Phone no"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_phone" runat="server" TextMode="Phone" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtb_phone" ErrorMessage="Please enter the phone number"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 296px"></td>
            <td style="height: 22px; width: 141px">
                <asp:Label ID="lblb_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtb_email" runat="server" TextMode="Email" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtb_email" ErrorMessage="Please enter the email"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 296px"></td>
            <td class="text-left" colspan="2" style="height: 22px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
                &nbsp;</td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 296px; height: 22px;"></td>
            <td class="modal-sm" style="width: 141px; height: 22px;"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
