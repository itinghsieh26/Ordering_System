<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="訂單.aspx.cs" Inherits="WebApplication2.訂單" %>

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
            width: 415px;
        }
        .auto-style17 {
            font-size: large;
            margin-bottom: 0px;
        }
        .auto-style18 {
            width: 415px;
            height: 21px;
        }
        .auto-style19 {
            height: 21px;
        }
        .auto-style12 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style9 {
            font-size: medium;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>您的訂單紀錄</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style18">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="訂單編號,顧客編號,餐廳編號,優惠券編號" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="訂單編號" HeaderText="訂單編號" InsertVisible="False" ReadOnly="True" SortExpression="訂單編號" />
                            <asp:BoundField DataField="顧客編號" HeaderText="顧客編號" ReadOnly="True" SortExpression="顧客編號" />
                            <asp:BoundField DataField="餐廳編號" HeaderText="餐廳編號" ReadOnly="True" SortExpression="餐廳編號" />
                            <asp:BoundField DataField="處理狀態" HeaderText="處理狀態" SortExpression="處理狀態" />
                            <asp:BoundField DataField="取餐時間" HeaderText="取餐時間" SortExpression="取餐時間" />
                            <asp:BoundField DataField="訂單送出時間" HeaderText="訂單送出時間" SortExpression="訂單送出時間" />
                            <asp:BoundField DataField="備註" HeaderText="備註" SortExpression="備註" />
                            <asp:BoundField DataField="付款方式" HeaderText="付款方式" SortExpression="付款方式" />
                            <asp:BoundField DataField="優惠券編號" HeaderText="優惠券編號" ReadOnly="True" SortExpression="優惠券編號" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString %>" SelectCommand="SELECT * FROM [訂單]"></asp:SqlDataSource>
                </td>
                <td class="auto-style19">
            <asp:DropDownList ID="drinkList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="drinkdata1" DataTextField="drink_name" DataValueField="drink_Id" Height="29px" Width="106px" CssClass="auto-style17" Visible="False">
            </asp:DropDownList>
                    <asp:DropDownList ID="drinkList2" runat="server" Height="31px" AutoPostBack="True" DataSourceID="drinkdata2" DataTextField="drink_name" DataValueField="drink_Id" OnSelectedIndexChanged="drinkList2_SelectedIndexChanged" Width="94px" CssClass="auto-style12" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="drinkList3" runat="server" AutoPostBack="True" DataSourceID="drinkdata3" DataTextField="drink_name" DataValueField="drink_Id" Height="37px" OnSelectedIndexChanged="drinkList3_SelectedIndexChanged" Width="104px" CssClass="auto-style7" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="drinkList4" runat="server" AutoPostBack="True" DataSourceID="drinkdata4" DataTextField="drink_name" DataValueField="drink_Id" Height="24px" OnSelectedIndexChanged="drinkList4_SelectedIndexChanged" CssClass="auto-style7" Visible="False">
            </asp:DropDownList>
                    <br />
                    <br />
            <asp:DropDownList ID="cupList1" runat="server" CssClass="auto-style9" OnSelectedIndexChanged="cupList1_SelectedIndexChanged" Visible="False">
            </asp:DropDownList>
                    <asp:DropDownList ID="cupList2" runat="server" CssClass="auto-style9" Visible="False">
                    </asp:DropDownList>
                        <asp:DropDownList ID="cupList3" runat="server" CssClass="auto-style9" Visible="False">
                        </asp:DropDownList>
                        <asp:DropDownList ID="cupList4" runat="server" CssClass="auto-style9" Visible="False">
                        </asp:DropDownList>
                        <br />
        <asp:SqlDataSource ID="drinkdata1" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString %>" SelectCommand="SELECT [品名] FROM [商品] WHERE ([目錄編號] = @目錄編號)">
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList1" DefaultValue="1" Name="目錄編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
                    </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [庫存], [drink_price] FROM [drinkTable] WHERE ([drink_Id] = @drink_Id)" InsertCommand="INSERT INTO orderTable(order_time) VALUES (GETDATE())">
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList1" Name="drink_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdata2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_Id], [drink_name] FROM [drinkTable] WHERE(drink_type = N'鮮調果茶') OR drink_Id = 0"></asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_price], [庫存] FROM [drinkTable] WHERE ([drink_Id] = @drink_Id)" InsertCommand="INSERT INTO orderTable(order_time) VALUES (GETDATE())">
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList2" Name="drink_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdata3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_Id], [drink_name] FROM [drinkTable] WHERE(drink_type = N'奶茶') OR drink_Id = 0"></asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_price], [庫存] FROM [drinkTable] WHERE ([drink_Id] = @drink_Id)" InsertCommand="INSERT INTO orderTable(order_time) VALUES (GETDATE())">
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList3" Name="drink_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdata4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_Id], [drink_name] FROM [drinkTable] WHERE(drink_type = N'冬季限定') OR drink_Id = 0"></asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_price], [庫存] FROM [drinkTable] WHERE ([drink_Id] = @drink_Id)" InsertCommand="INSERT INTO orderTable(order_time) VALUES (GETDATE())">
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList4" Name="drink_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="orderitemDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderitemTable (drink_id, order_id, num) VALUES (@drink_id,@order_id,@num),(@drink_id2,@order_id,@num2),(@drink_id3,@order_id,@num3),(@drink_id4,@order_id,@num4)" SelectCommand="SELECT drinkTable.drink_name, orderitemTable.num, orderitemTable.num * drinkTable.drink_price AS subtotal, orderitemTable.orderitem_id, orderitemTable.drink_id FROM orderitemTable INNER JOIN drinkTable ON orderitemTable.drink_id = drinkTable.drink_Id INNER JOIN orderTable ON orderitemTable.order_id = orderTable.order_Id WHERE (orderitemTable.order_id = @order_id) AND (orderitemTable.drink_id &gt; 0)" DeleteCommand="DELETE FROM orderitemTable WHERE (orderitem_id = @orderitem_id)" UpdateCommand="UPDATE orderitemTable SET num = @num, drink_id = @drink_id WHERE (orderitem_id = @orderitem_id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="orderGridView" Name="orderitem_id" PropertyName="SelectedDataKey" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="drinkList1" Name="" PropertyName="SelectedValue" />
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
                <asp:ControlParameter ControlID="cupList1" Name="num" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="drinkList2" Name="drink_id2" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="cupList2" Name="num2" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="drinkList3" Name="drink_id3" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="cupList3" Name="num3" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="drinkList4" Name="drink_id4" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="cupList4" Name="num4" PropertyName="SelectedValue" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="orderGridView" Name="num" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="orderGridView" Name="drink_id" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="orderGridView" Name="orderitem_id" PropertyName="SelectedDataKey" />
            </UpdateParameters>
        </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
