<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="log1.aspx.cs" Inherits="FCAProj.exp.log1" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link href="../Css/login.css" rel="stylesheet" />



     <div class=".WebContainer">


   
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


                            <asp:Button ID="submit" runat="server" Text="Button" />
                            
                        </div>

                 </div>
            </div>


        </div>

 
        </div>
</asp:Content>
