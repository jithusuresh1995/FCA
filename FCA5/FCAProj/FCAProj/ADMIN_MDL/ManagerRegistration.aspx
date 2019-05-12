<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManagerRegistration.aspx.cs" Inherits="FCAProj.ADMIN_MDL.ManagerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <table class="nav-justified" style="width: 100%; height: 100%; border-collapse:separate;border-spacing:5px;">
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td colspan="3" rowspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MANAGER REGISTRATION</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_branch_name" runat="server" Text="Branch Name"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:DropDownList ID="dd_branchname" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_name" runat="server"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 239px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px;">
                <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 46px; height: 20px"></td>
            <td style="height: 20px; width: 211px;">
                <asp:RadioButton ID="rbm_male" runat="server" GroupName="gen" Text="Male" />
                <asp:RadioButton ID="rbm_female" runat="server" GroupName="gen" Text="Female" />
            </td>
            <td style="height: 20px; width: 564px;"></td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_mdob" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_dob" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_mphone" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_phone" runat="server"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_memail" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_email" runat="server" style="margin-top: 0" TextMode="Email"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 239px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px">
                <asp:Label ID="lbl_midproof" runat="server" Text="Id Proof"></asp:Label>
            </td>
            <td style="height: 20px; width: 46px;"></td>
            <td style="height: 20px; width: 211px;">
                <asp:DropDownList ID="ddm_idproof" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Aadhar</asp:ListItem>
                    <asp:ListItem>Driving licence</asp:ListItem>
                    <asp:ListItem>Voters Id Card</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px; width: 564px;"></td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_mproofno" runat="server" Text="Proof Number"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_proofno" runat="server"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 239px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px">
                <asp:Label ID="lbl_photo" runat="server" Text="Photo"></asp:Label>
            </td>
            <td style="height: 20px; width: 46px;"></td>
            <td style="height: 20px; width: 211px;">
                <asp:FileUpload ID="filem_photo" runat="server" />
            </td>
            <td style="height: 20px; width: 564px;">
                <asp:Image ID="imgPhoto" runat="server" Width="100px" Height="100px" />
            </td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lbl_qualification" runat="server" Text="Highest Qualification"></asp:Label>
            </td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">
                <asp:TextBox ID="txtm_qualification" runat="server"></asp:TextBox>
            </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 239px;"></td>
            <td class="modal-sm" style="width: 159px; height: 20px;">
                <asp:Label ID="lbl_mexperience" runat="server" Text="Experience"></asp:Label>
            </td>
            <td style="width: 46px; height: 20px"></td>
            <td style="height: 20px; width: 211px;">
                <asp:TextBox ID="txtm_experience" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 20px; width: 564px;"></td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td colspan="3" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_reset" runat="server" Text="Reset" />
&nbsp;&nbsp;
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
&nbsp; </td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td style="width: 46px">&nbsp;</td>
            <td style="width: 211px">&nbsp;</td>
            <td style="width: 564px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 35px; width: 239px;"></td>
            <td class="modal-sm" style="width: 159px; height: 35px"></td>
            <td style="height: 35px; width: 46px;"></td>
            <td style="height: 35px; width: 211px;"></td>
            <td style="height: 35px; width: 564px;"></td>
        </tr>
    </table>
</asp:Content>
