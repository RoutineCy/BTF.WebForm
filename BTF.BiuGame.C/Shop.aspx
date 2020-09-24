<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="BTF.BiuGame.C.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        table{
            text-align:center;
            width:100%;
            height:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            商品列表：
            <asp:Repeater runat="server" ID="Repeater1" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table>
                                    <thead>
                                        <tr>
                                            <td>游戏分类</td>
                                            <td>游戏厂商</td>
                                            <td>游戏名</td>
                                            <td>游戏价格</td>
                                            <td>操作</td>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr>
                                        <td>
                                            <%# Eval("name") %>
                                        </td>
                                        <td>
                                            <%# Eval("sName") %>
                                        </td>
                                        <td>
                                            <%# Eval("gName") %>
                                        </td>
                                        <td>
                                            <%# Eval("gPrice") %>$
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="购买" CommandName="_buy" CommandArgument='<%# Eval("id") %>' OnClientClick='return confirm("是否购买该商品？")' />
                                           
                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
        </div>
    </form>
</body>
</html>
