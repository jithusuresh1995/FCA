<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="FCAProj.CUSTOMER.CustomerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 197px; height: 50px;"></td>
            <td style="width: 180px; height: 50px;"></td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="font-size: medium; font-weight: bold;" colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CUSTOMER&nbsp; REGISTRATION</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_bname" runat="server" Text="Branch Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dd_bname" DataTextField="Branch_name" DataValueField="Branch_id" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_address" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 197px"></td>
            <td style="width: 180px; height: 22px;">
                <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:RadioButton ID="rb_male" runat="server" GroupName="gender" Text="Male" Width="70px" />
                <asp:RadioButton ID="rb_female" runat="server" GroupName="gender" Text="Female" Width="150px" />
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_dob" runat="server" Text="Dob"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_phone" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_phone" runat="server" TextMode="Phone" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="height: 20px; width: 180px">
                <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_district" runat="server" Text="District"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="dd_district" AutoPostBack="true" runat="server" OnSelectedIndexChanged="dd_district_SelectedIndexChanged" Width="150px">
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
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="dd_city" runat="server" Width="150px">
                    
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_idproof" runat="server" Text="IdProof"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dd_idproof" runat="server" Width="150px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Aadhar</asp:ListItem>
                    <asp:ListItem>Voters id</asp:ListItem>
                    <asp:ListItem>Driving licence</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_proofno" runat="server" Text="Proof No"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txt_proofno" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;">&nbsp;</td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_photo" runat="server" Text="Photo"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:FileUpload ID="file_photo" runat="server" Width="200px" />
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_username" runat="server" EnableTheming="True" Text="Username"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txt_username" runat="server" Width="150px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_cpassword" ErrorMessage="Both password must be same"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="Register" />
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;">&nbsp;</td>
            <td style="width: 180px; height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
