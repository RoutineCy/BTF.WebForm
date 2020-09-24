<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGType.aspx.cs" Inherits="BiuGame后台管理系统.html.AddGType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>分类</title>
    <link href="../css/bksystem.css" rel="stylesheet" />
    <style type="text/css">
        *{
             font-size:20px;
             text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="添加分类"></asp:Label>
            <table style="margin:0 auto;">
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lalID" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>分类名称：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
