<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EmployeeRegistration.aspx.cs" Inherits="FCAProj.ADMIN_MDL.EmployeeRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 49px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td colspan="3" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMPLYOEE REGISTRATION</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 49px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 49px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label1" runat="server" Text="Branch Name"></asp:Label>
            </td>
            <td style="width: 49px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddE_branchname" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 271px"></td>
            <td style="height: 20px; width: 159px">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 20px; width: 49px"></td>
            <td style="height: 20px">
                <asp:TextBox ID="txte_name" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 271px"></td>
            <td style="width: 159px">
                <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 49px"></td>
            <td>
                <asp:TextBox ID="txte_address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 49px">&nbsp;</td>
            <td>
                <asp:RadioButton ID="rb_Emale" runat="server" GroupName="gender" OnCheckedChanged="rb_male_CheckedChanged" Text="Male" />
                <asp:RadioButton ID="rb_Efemale" runat="server" GroupName="gender" Text="Female" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label4" runat="server" Text="Dob"></asp:Label>
            </td>
            <td style="width: 49px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txte_dob" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 271px"></td>
            <td style="height: 20px; width: 159px">
                <asp:Label ID="Label5" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td style="height: 20px; width: 49px"></td>
            <td style="height: 20px">
                <asp:TextBox ID="txte_phone" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 271px"></td>
            <td style="height: 20px; width: 159px">
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 20px; width: 49px"></td>
            <td style="height: 20px">
                <asp:TextBox ID="txte_email" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 271px"></td>
            <td style="width: 159px; height: 20px">
                <asp:Label ID="Label7" runat="server" Text="Marital Status"></asp:Label>
            </td>
            <td style="width: 49px; height: 20px"></td>
            <td style="height: 20px">
                <asp:DropDownList ID="dd_emstatus" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label8" runat="server" Text="Joining Date"></asp:Label>
            </td>
            <td style="width: 49px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txte_joindate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label10" runat="server" Text="Designation"></asp:Label>
            </td>
            <td style="width: 49px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="dde_designation" runat="server">
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
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label11" runat="server" Text="Photo"></asp:Label>
            </td>
            <td style="width: 49px">&nbsp;</td>
            <td>
                <asp:FileUpload ID="filee_photo" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 49px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td colspan="3" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Ereset" runat="server" Text="Reset" />
&nbsp;
                <asp:Button ID="btn_Esave" runat="server" OnClick="btn_Esave_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 49px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 49px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
