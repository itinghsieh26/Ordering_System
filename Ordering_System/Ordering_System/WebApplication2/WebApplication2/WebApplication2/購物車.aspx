<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="購物車.aspx.cs" Inherits="WebApplication2.購物車" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 304px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style18 {
            width: 304px;
            height: 18px;
        }
        .auto-style19 {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>您的購物車<br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style18">
            <strong>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="購物車訂單編號" DataSourceID="shopDataSource1" OnRowDataBound="GridView1_RowDataBound">
                            <Columns>
                                <asp:TemplateField HeaderText="品名" SortExpression="品名">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("品名") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("品名") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="數量" SortExpression="數量">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("數量") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("數量") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="小計" SortExpression="subtotal">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("subtotal") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("subtotal") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="購物車訂單編號" InsertVisible="False" SortExpression="購物車訂單編號" Visible="False">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("購物車訂單編號") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("購物車訂單編號") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="商品編號" SortExpression="商品編號" Visible="False">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("商品編號") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("商品編號") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
            </strong>
                    </td>
                    <td class="auto-style19">
                    &nbsp;&nbsp;
            <strong>
                        <asp:Button ID="returnBT" runat="server" CssClass="auto-style4" OnClick="returnBT_Click" Text="返回主頁面" PostBackUrl="~/mainpage.aspx" />
                        <asp:Button ID="returnmenuBT" runat="server" CssClass="auto-style4" OnClick="returnmenuBT_Click" PostBackUrl="~/菜單頁面.aspx" Text="返回菜單" />
            </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <br />
            <strong>
                        <asp:Label ID="totalLB" runat="server" Text="總額"></asp:Label>
                        <asp:SqlDataSource ID="shopDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT 訂單內容.購物車訂單編號, 商品.品名, 訂單內容.數量, 訂單內容.數量 * 商品.金額 AS subtotal, 訂單內容.商品編號 FROM 訂單內容 INNER JOIN 商品 ON 訂單內容.商品編號 = 商品.商品編號 WHERE (訂單內容.訂單編號 = @訂單編號) AND (訂單內容.商品編號 &gt; 1) AND (商品.供應狀態 &lt;&gt; 0)">
                            <SelectParameters>
                                <asp:SessionParameter Name="訂單編號" SessionField="訂單編號" />
                            </SelectParameters>
                        </asp:SqlDataSource>
            </strong></td>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            </strong>
        </div>
    </form>
</body>
</html>
