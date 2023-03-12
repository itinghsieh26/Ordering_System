<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ordergo.aspx.cs" Inherits="_20211218.ordergo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            height: 24px;
            width: 819px;
        }
        .auto-style5 {
            width: 819px;
            font-weight: bold;
        }
        .auto-style6 {
            width: 263px;
        }
        .auto-style7 {
            height: 24px;
            width: 180px;
        }
        .auto-style8 {
            width: 180px;
        }
        .auto-style9 {
            width: 263px;
            height: 138px;
        }
        .auto-style10 {
            height: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="position: relative">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style4">
                        <asp:Image ID="searchIM" runat="server" Height="36px" ImageUrl="~/search.jpg" Width="57px" />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Height="34px" Width="288px"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">熱門類別</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:ImageButton ID="taiwaneseIMB" runat="server" Height="134px" ImageUrl="~/taiwanese.png" Width="137px" />
                    <asp:ImageButton ID="noodlesIMB" runat="server" Height="133px" ImageUrl="~/noodles.png" Width="153px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:ImageButton ID="Americanfood" runat="server" Height="129px" ImageUrl="~/americanfood.png" Width="136px" />
                    <asp:ImageButton ID="JapanesefoodIMB" runat="server" Height="131px" ImageUrl="~/japanese.png" Width="151px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:ImageButton ID="drinkIMB" runat="server" Height="145px" ImageUrl="~/drink.png" Width="139px" PostBackUrl="~/drink.aspx" />
                    <asp:ImageButton ID="DesertIMB" runat="server" Height="145px" ImageUrl="~/desert.png" Width="150px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
