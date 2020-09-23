<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addadmin.aspx.cs" Inherits="BiuGame后台管理系统.html.Addadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/bksystem.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 27px;
           
        }
        *{
             font-size:20px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            var $cb = $("#cbShow");
            $cb.click(function () {
                if ($cb.attr("checked") == "checked") {
                    $("#txtPwd").attr("TextMode", "SingleLine");
                    $("#txtPwdOK").attr("TextMode", "SingleLine");
                };
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%; height:auto">
            <div id="add" style="text-align:center; margin:0 auto">
                <table style="text-align:center; margin:0 auto; margin-top:50px;">
                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="lalID" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>

                            <asp:Label ID="Label1" runat="server" Text="员工账户："></asp:Label>

                        </td>
                        <td>

                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                        </td>
                        <td>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必填！" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">

                            <asp:Label ID="Label2" runat="server" Text="员工密码："></asp:Label>

                        </td>
                        <td class="auto-style1">

                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>

                        </td>
                        <td class="auto-style1">

                            <asp:RequiredFieldValidator ID="red" runat="server" ErrorMessage="必填！" ControlToValidate="txtPwd" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
                        </td>
                        <td>

                            <asp:TextBox ID="txtPwdOK" runat="server" TextMode="Password"></asp:TextBox>

                        </td>
                        <td>

                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密码不相同！" ForeColor="Red" ControlToCompare="txtPwd" ControlToValidate="txtPwdOK"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填！" ControlToValidate="txtPwdOK" ForeColor="Red"></asp:RequiredFieldValidator>


                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><asp:Button ID="btnAdd" runat="server" Text="添加员工" CssClass="btn button_btn bg-deep-blue" OnClick="btnAdd_Click" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="btn button_btn btn-danger" Text="返回" CausesValidation="False" OnClick="Button1_Click" />
                            <%--<asp:CheckBox ID="cbShow" runat="server" OnCheckedChanged="cbShow_CheckedChanged" />显示密码--%>
                            <input type="checkbox" value="显示密码"  id="cbShow" />显示密码
                        </td>
                    </tr>
                </table>
                        
                        
                        
                        
                        
                    </div>
        </div>
    </form>
</body>
</html>
