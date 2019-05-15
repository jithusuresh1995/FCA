<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FCAProj.exp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Css/login.css" rel="stylesheet" />
</head>
<body>
   <div class=".WebContainer">
    <form id="form1" runat="server">
    <section>
        <img src="../../images/pic1.jpg" class="panel" />
        


    </section>
        <div class="sec2">
            
            <div class="container">
                <div class="social">

                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/fb.png" />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/twitter.png" />
                    
                   
                        <div class="content">

                            <h2>Log in</h2>
                           
                             <asp:TextBox ID="usernameone" placeholder="user name"  runat="server"></asp:TextBox>
                          
                            
                            <asp:TextBox ID="password"  placeholder="password" runat="server"></asp:TextBox>
                             
                           
                            
                            <br />
                            
                            <br />
                            <asp:Button ID="submit" runat="server" Text="submit" />
                            
                        </div>

                 </div>
            </div>


        </div>

    </form>
        </div>
</body>
</html>
