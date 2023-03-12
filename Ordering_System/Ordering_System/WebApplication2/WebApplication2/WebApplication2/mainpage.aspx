<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="_20211218.mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 438px;
        }
        .auto-style3 {
            width: 438px;
            height: 24px;
        }
        .auto-style4 {
            width: 743px;
            text-align: left;
        }
        .auto-style5 {
            width: 743px;
            height: 24px;
            text-align: left;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="background-image: url('mainpagebackground.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div>
            <div class="auto-style7">
                <strong><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 行動點餐&nbsp;&nbsp;&nbsp; <asp:Image ID="shoppingcartIM" runat="server" Height="47px" ImageUrl="~/shoppingcart-removebg-preview.png" Width="45px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong>
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="ordergoIMB" runat="server" CssClass="auto-style6" Height="158px" ImageUrl="~/ordergo.jpg" Width="163px" PostBackUrl="~/ordergo.aspx" />
                        <asp:ImageButton ID="myorderIMB" runat="server" CssClass="auto-style6" Height="171px" ImageUrl="~/myorder.jpg" Width="169px" PostBackUrl="~/購物車.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:ImageButton ID="memberIMB" runat="server" Height="169px" ImageUrl="~/member.jpg" Width="162px" />
                        <asp:ImageButton ID="couponIMB" runat="server" Height="183px" ImageUrl="~/coupon.jpg" Width="171px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <strong>
                        <asp:Button ID="messageBT" runat="server" Height="96px" Text="訊息" Width="164px" OnClick="messageBT_Click" />
                        </strong>
                        <asp:Button ID="recordBT" runat="server" Height="98px" Text="紀錄" Width="171px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
