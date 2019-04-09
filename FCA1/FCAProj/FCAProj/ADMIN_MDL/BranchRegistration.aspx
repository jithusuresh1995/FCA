<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BranchRegistration.aspx.cs" Inherits="FCAProj.ADMIN_MDL.BranchRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table  style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 191px;">&nbsp;</td>
            <td style="height: 23px; width: 215px;">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 191px;"></td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BRANCH&nbsp; REGISTRATION</td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 191px;">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 191px;"></td>
            <td style="height: 23px; width: 215px;"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 191px; height: 24px"></td>
            <td id="lblb_name" class="modal-sm" style="width: 215px; height: 24px">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtbname" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 24px"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td id="lblb_address" class="modal-sm" style="width: 215px">
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_address" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="Label3" runat="server" Text="District"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddb_district" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddb_district_SelectedIndexChanged">
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
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblb_city" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddb_city" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblb_zipcode" runat="server" Text="Zipcode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_zipcode" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblb_date" runat="server" Text="Opening Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_date" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblb_phone" runat="server" Text="Phone no"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb_phone" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 191px"></td>
            <td style="height: 22px; width: 215px">
                <asp:Label ID="lblb_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtb_email" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 191px"></td>
            <td class="text-left" colspan="2" style="height: 22px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_reset" runat="server" Text="Reset" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
                &nbsp;</td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 191px">&nbsp;</td>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
