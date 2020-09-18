<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudio.aspx.cs" Inherits="BiuGame后台管理系统.html.AddStudio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增厂商</title>
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
                <caption>新增厂商</caption>
                <tr>
                    <td>
                        厂商名称：
                    </td>
                    <td>
                        <asp:TextBox ID="txtStuName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        联系电话：
                    </td>
                    <td>
                        <asp:TextBox ID="txtStuTel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">

                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
