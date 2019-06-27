<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="FCAProj.Forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <fieldset class="auto-style4">
                        <legend><strong>Forgot Password</strong></legend>
                        <br />
                        <br />
                        <div class="auto-style9">
                            <strong>  
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Enter Your Email Address"></asp:Label>
                            </strong>&nbsp;

                        </div>
                            <asp:TextBox ID="TxtEmail" runat="server" Width="233px"></asp:TextBox>                        
                        <br />
                        <div class="auto-style9">
                            <br />
                            <asp:Button ID="btn_submit" runat="server" CssClass="auto-style5" Text="Forgot Password Reset" style="font-weight: bold" Width="254px" OnClick="Button1_Click" />
                        </div>
                        <div class="auto-style11">
                               <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                            &nbsp;</div>
                         <div class="auto-style9">
                            <br />
                            <strong>
                               <asp:Label ID="LblPswd" runat="server" Text="Please Check Your Registered Email" Visible="False"></asp:Label>
                            </strong>
                        </div>
                      
                    </fieldset>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
