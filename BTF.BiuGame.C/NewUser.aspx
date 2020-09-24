<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="BTF.BiuGame.C.NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        table{
            margin:0 auto;
            width:400px;
            margin-top:5%;
        }
        .left {
            text-align: right;
        }

        tr td {
            height: 30px;
            width: 220px;
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="left">用户名：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="left">性别：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="left">密码：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="left">确认密码：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="left">用户地区：</td>
                    <td>
                        <select runat="server" id="sel_province">
                            <option>省/直辖市</option>
                        </select>
                        <select runat="server" id="sel_city">
                            <option>市</option>
                        </select>
                        <select runat="server" id="sel_area">
                            <option>区/县</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="left">手机号：</td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
