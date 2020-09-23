<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGame.aspx.cs" Inherits="BiuGame后台管理系统.html.AddGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/bksystem.css" rel="stylesheet" />
    <style type="text/css">
        *{
             font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin:0 auto;">
                <tr style="margin-bottom:5px;">
                    <td>游戏编号：</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr><tr>
                    <td>游戏名称：</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>游戏分类：</td>
                    <td>
                        <asp:DropDownList ID="droType" runat="server" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>游戏厂商：</td>
                    <td>
                        <asp:DropDownList ID="droShop" runat="server" DataTextField="sName" DataValueField="id" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>游戏价格：</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>是否上架：</td>
                    <td>
                        <asp:RadioButtonList ID="rdostate" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Selected="True" Value="0">上架</asp:ListItem>
                            <asp:ListItem Value="1">下架</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="添加" CssClass="btn button_btn bg-deep-blue" OnClick="Button1_Click" />
                        <%--<input id="btn1" type="button" value="添加" class="btn button_btn bg-deep-blue" />--%>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
