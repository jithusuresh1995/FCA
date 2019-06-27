<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManagerRegistration.aspx.cs" Inherits="FCAProj.ADMIN_MDL.ManagerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:10px;">
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td colspan="3" rowspan="3" style="font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MANAGER REGISTRATION</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_branch_name" runat="server" Text="Branch Name"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:DropDownList ID="dd_branchname" runat="server" Width="200px">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dd_branchname" ErrorMessage="Select branch name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:TextBox ID="txtm_name" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtm_name" ErrorMessage="Enter the name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:TextBox ID="txtm_address" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtm_address" ErrorMessage="Enter the address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 371px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px;">
                <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 46px; height: 20px"></td>
            <td style="height: 20px; width: 225px;">
                <asp:RadioButton ID="rbm_male" runat="server" GroupName="gen" Text="Male" Width="66px" />
                <asp:RadioButton ID="rbm_female" runat="server" GroupName="gen" Text="Female" />
            </td>
            <td style="height: 20px; width: 564px;"></td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_mdob" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:TextBox ID="txtm_dob" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtm_dob" ErrorMessage="Enter the dob"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_mphone" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:TextBox ID="txtm_phone" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtm_phone" ErrorMessage="ENter the phone number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px; height: 24px;" class="modal-sm"></td>
            <td class="modal-sm" style="width: 159px; height: 24px;">
                <asp:Label ID="lbl_memail" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 46px; height: 24px;"></td>
            <td style="width: 225px; height: 24px;">
                <asp:TextBox ID="txtm_email" runat="server" style="margin-top: 0" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px; height: 24px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtm_email" ErrorMessage="Enter the email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 371px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px">
                <asp:Label ID="lbl_midproof" runat="server" Text="Id Proof"></asp:Label>
            </td>
            <td style="height: 20px; width: 46px;"></td>
            <td style="height: 20px; width: 225px;">
                <asp:DropDownList ID="ddm_idproof" runat="server" Width="200px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Aadhar</asp:ListItem>
                    <asp:ListItem>Driving licence</asp:ListItem>
                    <asp:ListItem>Voters Id Card</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px; width: 564px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddm_idproof" ErrorMessage="Select the proof"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_mproofno" runat="server" Text="Proof Number"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:TextBox ID="txtm_proofno" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtm_proofno" ErrorMessage="Enter the proofno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 371px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px">
                <asp:Label ID="lbl_photo" runat="server" Text="Photo"></asp:Label>
            </td>
            <td style="height: 20px; width: 46px;"></td>
            <td style="height: 20px; width: 225px;">
                <asp:FileUpload ID="filem_photo" runat="server" Width="200px" />
            </td>
            <td style="height: 20px; width: 564px;">
                <asp:Image ID="imgPhoto" runat="server" Width="100px" Height="100px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="filem_photo" ErrorMessage="Please attach photo"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_qualification" runat="server" Text="Highest Qualification"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">
                <asp:TextBox ID="txtm_qualification" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 564px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtm_qualification" ErrorMessage="Enter the qualification"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 371px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px;">
                <asp:Label ID="lbl_mexperience" runat="server" Text="Experience"></asp:Label>
            </td>
            <td style="width: 46px; height: 20px"></td>
            <td style="height: 20px; width: 225px;">
                <asp:TextBox ID="txtm_experience" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 20px; width: 564px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtm_experience" ErrorMessage="Enter the experince"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td colspan="3" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
&nbsp; </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 371px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 35px; width: 371px;"></td>
            <td class="modal-sm" style="width: 159px; height: 35px"></td>
            <td style="height: 35px; width: 46px;"></td>
            <td style="height: 35px; width: 225px;"></td>
            <td style="height: 35px; width: 564px;"></td>
        </tr>
    </table>
</asp:Content>
