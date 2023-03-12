<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="菜單頁面.aspx.cs" Inherits="WebApplication2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 241px;
            height: 85px;
        }
        .auto-style3 {
            font-size: x-large;
            color: #000000;
            text-align: left;
        }
        .auto-style4 {
            font-size: medium;
            color: #000000;
            text-align: left;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style10 {
            height: 20px;
            width: 391px;
        }
        .auto-style11 {
            width: 391px;
            text-align: left;
        }
        .auto-style12 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style14 {
            width: 553px;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            width: 553px;
            font-size: x-large;
        }
        .auto-style17 {
            font-size: large;
            margin-bottom: 0px;
        }
        .auto-style18 {
            width: 553px;
            height: 32px;
        }
        .auto-style19 {
            height: 32px;
        }
        .auto-style20 {
            width: 553px;
            height: 33px;
        }
        .auto-style21 {
            height: 33px;
        }
        .auto-style22 {
            font-size: xx-large;
        }
        .auto-style23 {
            width: 403px;
        }
        .auto-style24 {
            height: 148px;
        }
        .auto-style25 {
            background-color: #FF9933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="text-align: center">
            <img alt="" class="auto-style2" src="combuy.jpg" /></div>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <table class="auto-style5">
            <tr>
                <td class="auto-style16">原葉鮮萃茶 </td>
                <td class="auto-style15">鮮調果茶&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style14">
            <asp:DropDownList ID="drinkList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="drinkdata1" DataTextField="品名" DataValueField="商品編號" Height="29px" Width="106px" CssClass="auto-style17">
            </asp:DropDownList>
            <asp:Label ID="drinkprice1" runat="server" Text="X元" CssClass="auto-style7"></asp:Label>
                    <asp:Label ID="drinkqt1" runat="server" Text="庫存" CssClass="auto-style7"></asp:Label>
                </td>
                <td><asp:DropDownList ID="drinkList2" runat="server" Height="31px" AutoPostBack="True" DataSourceID="drinkdata2" DataTextField="品名" DataValueField="商品編號" OnSelectedIndexChanged="drinkList2_SelectedIndexChanged" Width="94px" CssClass="auto-style12">
            </asp:DropDownList>
                    <asp:Label ID="drinkpriceLB2" runat="server" Text="X元"></asp:Label>
                    <asp:Label ID="drinkqtLB2" runat="server" Text="庫存"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
            <asp:DropDownList ID="cupList1" runat="server" CssClass="auto-style9" OnSelectedIndexChanged="cupList1_SelectedIndexChanged" Visible="False">
            </asp:DropDownList>
            <asp:Label ID="cupLB1" runat="server" Text="杯" Visible="False"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:DropDownList ID="cupList2" runat="server" CssClass="auto-style9" Visible="False">
                    </asp:DropDownList>
                    <asp:Label ID="cupLB2" runat="server" CssClass="auto-style9" Text="份" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <table class="auto-style5">
                <tr>
                    <td class="auto-style14">奶茶</td>
                    <td>冬季限定</td>
                </tr>
                <tr>
                    <td class="auto-style18">
            <asp:DropDownList ID="drinkList3" runat="server" AutoPostBack="True" DataSourceID="drinkdata3" DataTextField="品名" DataValueField="商品編號" Height="37px" OnSelectedIndexChanged="drinkList3_SelectedIndexChanged" Width="104px" CssClass="auto-style7">
            </asp:DropDownList>
            <asp:Label ID="drinkpriceLB3" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
            <asp:Label ID="drinkqtLB3" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style19">
            <asp:DropDownList ID="drinkList4" runat="server" AutoPostBack="True" DataSourceID="drinkdata4" DataTextField="品名" DataValueField="商品編號" Height="24px" OnSelectedIndexChanged="drinkList4_SelectedIndexChanged" CssClass="auto-style7">
            </asp:DropDownList>
            <asp:Label ID="priceLB4" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
            <asp:Label ID="qtLB4" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:DropDownList ID="cupList3" runat="server" CssClass="auto-style9" Visible="False">
                        </asp:DropDownList>
                        <asp:Label ID="cupLB3" runat="server" CssClass="auto-style9" Text="份" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="cupList4" runat="server" CssClass="auto-style9" Visible="False">
                        </asp:DropDownList>
                        <asp:Label ID="cupLB4" runat="server" CssClass="auto-style9" Text="份" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
        <p class="auto-style4">
            &nbsp;
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="addBT" runat="server" OnClick="addBT_Click" Text="加入購物車" Visible="False" Width="75px" />
            </p>
        <table class="auto-style5">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style6" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" rowspan="2">
                    &nbsp;<asp:Button ID="orderBT" runat="server" OnClick="orderBT_Click" Text="前往訂購" />
                    <asp:Button ID="resertBT" runat="server" OnClick="resertBT_Click" Text="清空購物車" />
                </td>
                <td class="auto-style23" rowspan="2">
                    <asp:GridView ID="orderitemGridView" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style25" DataKeyNames="購物車訂單編號" DataSourceID="orderitemDataSource1" OnRowDataBound="orderitemGridView_RowDataBound" OnRowDeleted="orderitemGridView_RowDeleted">
                        <Columns>
                            <asp:TemplateField HeaderText="品名" SortExpression="品名">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="editDropDownList1" runat="server" DataSourceID="editdrink" DataTextField="品名" DataValueField="商品編號" SelectedValue='<%# Bind("商品編號", "{0}") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="editdrink" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [商品編號], [品名] FROM [商品] WHERE (([商品編號] &gt; @商品編號) AND ([商品編號] &lt; @商品編號2))">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="商品編號" Type="Int32" />
                                            <asp:Parameter DefaultValue="35" Name="商品編號2" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("品名") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="數量" SortExpression="數量">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Text='<%# Bind("數量") %>' Width="64px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("數量") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="小計" SortExpression="subtotal">
                                <EditItemTemplate>
                                    <asp:Label ID="subTotalLB" runat="server" Text='<%# Eval("subtotal") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="subTotalLB" runat="server" Text='<%# Bind("subtotal") %>'></asp:Label>
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
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <br />
                    <asp:Label ID="totalLB" runat="server" CssClass="auto-style22" Text="總價" Visible="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="購物車" PostBackUrl="~/購物車.aspx" Height="31px" />
                </td>
            </tr>
        </table>
    <p class="auto-style3">
        &nbsp;
        <asp:SqlDataSource ID="drinkdata1" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [品名], [商品編號] FROM [商品] WHERE ([目錄編號] = @目錄編號)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="目錄編號" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect1" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [供應狀態], [金額] FROM [商品] WHERE ([商品編號] = @商品編號)" InsertCommand="INSERT INTO 訂單(顧客編號, 訂單送出時間) VALUES (@顧客編號, GETDATE())">
            <InsertParameters>
                <asp:SessionParameter Name="顧客編號" SessionField="顧客編號" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList1" Name="商品編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdata2" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [商品編號], [品名] FROM [商品] WHERE ([目錄編號] = @目錄編號) OR [商品編號] = 1">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="目錄編號" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect2" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [金額], [供應狀態] FROM [商品] WHERE ([商品編號] = @商品編號)" InsertCommand="INSERT INTO 訂單(顧客編號, 餐廳編號, 訂單送出時間) VALUES (@顧客編號, @餐廳編號, GETDATE())">
            <InsertParameters>
                <asp:SessionParameter Name="顧客編號" SessionField="顧客編號" />
                <asp:SessionParameter Name="餐廳編號" SessionField="餐廳編號" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList2" Name="商品編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdata3" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [商品編號], [品名] FROM [商品] WHERE ([目錄編號] = @目錄編號) OR [商品編號] = 1">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="目錄編號" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect3" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [金額], [供應狀態] FROM [商品] WHERE ([商品編號] = @商品編號)" InsertCommand="INSERT INTO 訂單(顧客編號, 餐廳編號, 訂單送出時間) VALUES (@顧客編號, @餐廳編號, GETDATE())">
            <InsertParameters>
                <asp:SessionParameter Name="顧客編號" SessionField="顧客編號" />
                <asp:SessionParameter Name="餐廳編號" SessionField="餐廳編號" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList3" Name="商品編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdata4" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [商品編號], [品名] FROM [商品] WHERE ([目錄編號] = @目錄編號) OR [商品編號] = 1">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="目錄編號" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkdataselect4" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" SelectCommand="SELECT [金額], [供應狀態] FROM [商品] WHERE ([商品編號] = @商品編號)" InsertCommand="INSERT INTO 訂單(顧客編號, 餐廳編號, 訂單送出時間) VALUES (@顧客編號, @餐廳編號, GETDATE())">
            <InsertParameters>
                <asp:SessionParameter Name="顧客編號" SessionField="顧客編號" />
                <asp:SessionParameter Name="餐廳編號" SessionField="餐廳編號" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList4" Name="商品編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </p>
        <p class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="orderitemDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BeNicePleaseConnectionString2 %>" DeleteCommand="DELETE FROM 訂單內容 WHERE (購物車訂單編號 = @購物車訂單編號)" InsertCommand="INSERT INTO 訂單內容(商品編號, 訂單編號, 數量) VALUES (@商品編號, @訂單編號, @數量), (@商品編號2, @訂單編號, @數量2), (@商品編號3, @訂單編號, @數量3), (@商品編號4, @訂單編號, @數量4)" SelectCommand="SELECT 訂單內容.購物車訂單編號, 商品.品名, 訂單內容.數量, 訂單內容.數量 * 商品.金額 AS subtotal, 訂單內容.商品編號 FROM 訂單內容 INNER JOIN 商品 ON 訂單內容.商品編號 = 商品.商品編號 WHERE (訂單內容.訂單編號 = @訂單編號) AND (訂單內容.商品編號 &gt; 1) AND (商品.供應狀態 &lt;&gt; 0)" UpdateCommand="UPDATE 訂單內容 SET 數量 = @數量, 商品編號 = @商品編號 WHERE (購物車訂單編號 = @購物車訂單編號)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="orderitemGridView" Name="購物車訂單編號" PropertyName="SelectedDataKey" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="drinkList1" Name="商品編號" PropertyName="SelectedValue" />
                    <asp:SessionParameter Name="訂單編號" SessionField="訂單編號" />
                    <asp:ControlParameter ControlID="cupList1" Name="數量" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="drinkList2" Name="商品編號2" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="cupList2" Name="數量2" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="drinkList3" Name="商品編號3" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="cupList3" Name="數量3" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="drinkList4" Name="商品編號4" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="cupList4" Name="數量4" PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="訂單編號" SessionField="訂單編號" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="orderitemGridView" Name="數量" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="orderitemGridView" Name="購物車訂單編號" PropertyName="SelectedDataKey" />
                    <asp:ControlParameter ControlID="orderitemGridView" Name="商品編號" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <asp:DetailsView ID="drinkDetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="drinkdataselect1" Height="50px" OnPageIndexChanging="drinkDetailsView1_PageIndexChanging" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="供應狀態" HeaderText="供應狀態" SortExpression="供應狀態" />
                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
            </Fields>
        </asp:DetailsView>
        <asp:DetailsView ID="drinkDetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="drinkdataselect2" Visible="False">
            <Fields>
                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
                <asp:BoundField DataField="供應狀態" HeaderText="供應狀態" SortExpression="供應狀態" />
            </Fields>
        </asp:DetailsView>
        <asp:DetailsView ID="drinkDetailsView3" runat="server" AutoGenerateRows="False" DataSourceID="drinkdataselect3" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
                <asp:BoundField DataField="供應狀態" HeaderText="供應狀態" SortExpression="供應狀態" />
            </Fields>
        </asp:DetailsView>
        <asp:DetailsView ID="drinkDetailsView4" runat="server" AutoGenerateRows="False" DataSourceID="drinkdataselect4" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
                <asp:BoundField DataField="供應狀態" HeaderText="供應狀態" SortExpression="供應狀態" />
            </Fields>
        </asp:DetailsView>
    </form>
    </body>
</html>
