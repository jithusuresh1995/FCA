<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="FCAProj.CUSTOMER.CustomerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 197px; height: 50px;"></td>
            <td style="width: 180px; height: 50px;"></td>
            <td class="auto-style7"></td>
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
                <asp:DropDownList ID="dd_bname" DataTextField="Branch_name" DataValueField="Branch_id" runat="server" Width="200px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dd_bname" ErrorMessage="Select the bname"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_name" ErrorMessage="Enter the name"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_address" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_address" ErrorMessage="Enter the address"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 197px"></td>
            <td style="width: 180px; height: 22px;">
                <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style8">
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
            <td class="auto-style6">
                <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_dob" ErrorMessage="Enter the dob"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_phone" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_phone" runat="server" TextMode="Phone" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_phone" ErrorMessage="Enter the phone number"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter the email"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_district" runat="server" Text="District"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="dd_district" AutoPostBack="true" runat="server" OnSelectedIndexChanged="dd_district_SelectedIndexChanged" Width="200px">
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="dd_district" ErrorMessage="Select the district"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="dd_city" runat="server" Width="200px">
                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="dd_city" ErrorMessage="Select the city"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="lbl_idproof" runat="server" Text="IdProof"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dd_idproof" runat="server" Width="200px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Aadhar</asp:ListItem>
                    <asp:ListItem>Voters id</asp:ListItem>
                    <asp:ListItem>Driving licence</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dd_idproof" ErrorMessage="Select the proof"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_proofno" runat="server" Text="Proof No"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_proofno" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_proofno" ErrorMessage="Enter the proof number"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;">&nbsp;</td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_photo" runat="server" Text="Photo"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="file_photo" runat="server" Width="200px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="file_photo" ErrorMessage="Please attach photo"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 197px;"></td>
            <td style="width: 180px; height: 20px">
                <asp:Label ID="lbl_username" runat="server" EnableTheming="True" Text="Username"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_username" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txt_username" ErrorMessage="Enter the username"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txt_password" ErrorMessage="Enter the password"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_cpassword" ErrorMessage="Both password must be same"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txt_cpassword" ErrorMessage="Enter confirm password"></asp:RequiredFieldValidator>
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
            <td class="auto-style6">&nbsp;</td>
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
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            width: 197px;
            height: 20px;
        }
        .auto-style5 {
            width: 180px;
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            height: 22px;
        }
    </style>
</asp:Content>

