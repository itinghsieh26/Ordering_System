<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_20211218.WebForm1" %>

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
            width: 261px;
        }
        .auto-style3 {
            width: 261px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            text-align: center;
        }
        .auto-style5 {
            width: 75px;
        }
        .auto-style6 {
            height: 23px;
            width: 75px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44338/cutlery_tape_fork_spoon_knife_106255_1280x800.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1" style="position: relative">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="accountLB" runat="server" Text="帳號 : "></asp:Label>
                    <asp:TextBox ID="accountTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="passwordLB" runat="server" Text="密碼 : "></asp:Label>
                    <asp:TextBox ID="passwordTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="loginBT" runat="server" OnClick="loginBT_Click" Text="登入" />
                    <asp:LinkButton ID="entry" runat="server" PostBackUrl="~/mainpage.aspx" Visible="False">進入點餐系統</asp:LinkButton>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <asp:DetailsView ID="clientDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="clientDetail" EmptyDataText="帳號密碼錯誤" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="帳號" HeaderText="帳號" SortExpression="帳號" />
                <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="clientDetail" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString %>" SelectCommand="SELECT [帳號], [密碼] FROM [顧客] WHERE (([帳號] = @帳號) AND ([密碼] = @密碼))" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="accountTB" Name="帳號" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="passwordTB" Name="密碼" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
