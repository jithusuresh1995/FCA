<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoldReceipt.aspx.cs" Inherits="FCAProj.EMPLOYEE_MDL.GoldReceipt" %>

<!DOCTYPE html>
<script type="text/javascript">

    function Print() {
        window.print();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style4 {
            width: 841px;
        }
        .auto-style5 {
            width: 10px;
        }
        .auto-style6 {
            width: 267px;
        }
        .auto-style7 {
            width: 5px;
        }
        .auto-style8 {
            width: 100%;
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" BorderStyle="Double" Width="631px">
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style3" colspan="4"><strong>CUSTOMER RECEIPT</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style2" colspan="4"><strong>Fincore Financiers Pvt Ltd</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td colspan="2" rowspan="4">
                                        <asp:Image ID="cusimage" runat="server" Height="100px" Width="100px" />
                                    </td>
                                    <td rowspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Text="Branch"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl_branch" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label8" runat="server" Text="Date"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl_date" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl_amount" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label9" runat="server" Text="Gold No"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl_goldno" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl_name" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl_address" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Description of Jwellerey</td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        &nbsp;&nbsp;&nbsp;
                                        <div class="auto-style2">
                                            <asp:GridView ID="Griditem" runat="server" AutoGenerateColumns="False">
                                                <Columns>
                                                    <asp:BoundField DataField="Gitem" HeaderText="Item">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Gcount" HeaderText="Count">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Gweight" HeaderText="Weight">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Branch Manager&#39;s Signature and Seal:</td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Print"  OnClientClick="Print()" OnClick="Button1_Click"/>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
