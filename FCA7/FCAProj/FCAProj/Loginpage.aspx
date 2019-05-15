<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="FCAProj.Loginpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      section{
          width:25vw;
          height:50vh;
          background-color:aquamarine;
          display:flex;
          justify-content:center;
          align-items:center;
      }
      .auto-style3 {
          height: 519px;
      }
      .auto-style4 {
          width: 83%;
          height: 100%;
      }
      .auto-style5 {
            width: 395px;
        }
      .auto-style6 {
          width: 395px;
          height: 110px;
      }
      .auto-style7 {
          height: 110px;
      }
      .auto-style8 {
          height: 110px;
          width: 543px;
      }
      .auto-style9 {
            width: 543px;
        }
      .auto-style10 {
          width: 68px;
      }
      .auto-style11 {
          height: 20px;
          width: 68px;
      }
      .auto-style15 {
        height: 22px;
        width: 13px;
    }
    .auto-style16 {
        width: 13px;
    }
    .auto-style17 {
        height: 20px;
        width: 13px;
    }
    .auto-style20 {
        width: 152px;
    }
    .auto-style21 {
        height: 20px;
        width: 152px;
    }
    .auto-style25 {
        height: 20px;
    }
        .auto-style26 {
            height: 485px;
            float: left;
            font-size: 18px;
            line-height: 20px;
            width: 1006px;
            margin-top: 0px;
            padding: 15px 20px;
        }
  </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
<div class="auto-style26">
  
    <table class="nav-justified">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">
                <div>
                    <section>
                        
    <table class="auto-style4" style="border-collapse:separate;border-spacing:5px;" align="center">
         
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style11"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>

         <tr>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="auto-style10">
               
                <asp:TextBox ID="txt_username" runat="server" OnTextChanged="txt_username_TextChanged"></asp:TextBox>
                   
            </td>
            <td class="auto-style16">
                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
          

    


        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style16">&nbsp;</td>
        </tr>

        <tr>
            <td colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click1" Text="Login" />
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="2">
                <table class="nav-justified">
                    <tr>
                        <td>
                
                        </td>
                        <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CUSTOMER/CustomerRegistration.aspx">New User?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
    </table>
    </section>
                </div>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>
