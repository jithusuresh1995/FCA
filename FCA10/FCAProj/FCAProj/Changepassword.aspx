<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="FCAProj.Changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset class="auto-style4">
                        <legend><strong>Change Password</strong></legend>
                        <br />
                        <br />
                        <div class="auto-style9">
                            <strong>                            
                                 <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
                            </strong>&nbsp;</div>
                        <asp:TextBox ID="TxtCPswd" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <div class="auto-style9">
                            <br />
                            <strong>
                                 <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                            </strong>
                        </div>
                        <div class="auto-style11">
                               <asp:TextBox ID="TxtNPswd" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;</div>
                         <div class="auto-style9">
                            <br />
                            <strong>
                               <asp:Label ID="Label3" runat="server" Text="Re-type New Password"></asp:Label>
                            </strong>
                        </div>
                        <div class="auto-style11">
                            <asp:TextBox ID="TxtCNPswd" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNPswd" ControlToValidate="TxtCNPswd" ErrorMessage="Password confirmation doesn't match the password" ForeColor="Red"></asp:CompareValidator>
                            &nbsp;</div>
                        <br />
                      
                        <div class="auto-style12">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                            <asp:Button ID="BtnSave" runat="server" CssClass="auto-style11" Text="Save Changes" Width="177px" style="font-weight: bold" OnClick="BtnSave_Click" />                            </strong>
                        </div>
                    </fieldset>
    </form>
</body>
</html>
