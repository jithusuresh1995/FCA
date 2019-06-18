<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EmployeeRegistration.aspx.cs" Inherits="FCAProj.ADMIN_MDL.EmployeeRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 361px; height: 54px;"></td>
            <td style="width: 106px; height: 54px;"></td>
            <td style="width: 19px; height: 54px;"></td>
            <td class="modal-sm" style="width: 243px; height: 54px;"></td>
            <td style="height: 54px"></td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td colspan="3" rowspan="2" style="font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMPLYOEE REGISTRATION</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label1" runat="server" Text="Branch Name"></asp:Label>
            </td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">
                <asp:DropDownList ID="ddE_branchname" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 361px"></td>
            <td style="height: 20px; width: 106px">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 20px; width: 19px"></td>
            <td style="height: 20px; width: 243px;">
                <asp:TextBox ID="txte_name" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 361px"></td>
            <td style="width: 106px">
                <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 19px"></td>
            <td class="modal-sm" style="width: 243px">
                <asp:TextBox ID="txte_address" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">
                <asp:RadioButton ID="rb_Emale" runat="server" GroupName="gender" OnCheckedChanged="rb_male_CheckedChanged" Text="Male" />
                <asp:RadioButton ID="rb_Efemale" runat="server" GroupName="gender" Text="Female" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label4" runat="server" Text="Dob"></asp:Label>
            </td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">
                <asp:TextBox ID="txte_dob" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 361px"></td>
            <td style="height: 20px; width: 106px">
                <asp:Label ID="Label5" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td style="height: 20px; width: 19px"></td>
            <td style="height: 20px; width: 243px;">
                <asp:TextBox ID="txte_phone" runat="server" TextMode="Phone" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 361px"></td>
            <td style="height: 20px; width: 106px">
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 20px; width: 19px"></td>
            <td style="height: 20px; width: 243px;">
                <asp:TextBox ID="txte_email" runat="server" TextMode="Email" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 361px"></td>
            <td style="width: 106px; height: 20px">
                <asp:Label ID="Label7" runat="server" Text="Marital Status"></asp:Label>
            </td>
            <td style="width: 19px; height: 20px"></td>
            <td style="height: 20px; width: 243px;">
                <asp:DropDownList ID="dd_emstatus" runat="server" Width="150px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 361px; height: 24px;"></td>
            <td style="width: 106px; height: 24px;">
                <asp:Label ID="Label8" runat="server" Text="Joining Date"></asp:Label>
            </td>
            <td style="width: 19px; height: 24px;"></td>
            <td class="modal-sm" style="width: 243px; height: 24px">
                <asp:TextBox ID="txte_joindate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label10" runat="server" Text="Designation"></asp:Label>
            </td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">
                <asp:DropDownList ID="dde_designation" runat="server" Width="150px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Clerk</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label11" runat="server" Text="Photo"></asp:Label>
            </td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">
                <asp:FileUpload ID="filee_photo" runat="server" />
            </td>
            <td>
                <asp:Image ID="imgPhoto" runat="server" Width="100px" Height="100px" />
            </td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td colspan="3" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Esave" runat="server" OnClick="btn_Esave_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 361px">&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 19px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
