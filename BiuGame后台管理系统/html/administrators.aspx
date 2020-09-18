<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrators.aspx.cs" Inherits="BiuGame后台管理系统.administrators" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <meta name="format-detection" content="telephone=no, email=no, date=no, address=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta http-equiv="../Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <link href="../css/bksystem.css" rel="stylesheet" />
    <link href="../font/iconfont.css" rel="stylesheet" type="text/css" />
    <link href="../css/module.css" rel="stylesheet" type="text/css" />
    <link href="../css/pages.css" rel="stylesheet" type="text/css" />
    <title>管理员表</title>
    <script src="../../js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="../../js/HUpages.js" type="text/javascript"></script>
    <script src="../../js/common.js" type="text/javascript"></script>
    <style type="text/css">
       #rpt{
           display:block;
           margin:0 auto;
           width:1000px;
           height:auto;
           text-align:center;
       }
       #rpt>table{
           margin:0 auto;
           width:100%;
       }
    </style>
   <%-- <script>
        $(function () {
            $("table tr:even").css("background-color", "cyan");
            $("#add").hide();
            $("#btn1").click(function () {
                $("#add").slideToggle(300);
            });
        })
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pages-style">
            <!--右侧内容-->
            <div class="bk-con-message message-section" id="iframe_box">
                <!--编辑内容-->
                <div class="operation  mb15" style="">
                    <%--<asp:Button ID="btn1" runat="server" Text="新员工来啦！" CssClass="btn button_btn btn-danger" OnClick="Button1_Click" />--%>
                    <%--<input type="button" class="btn button_btn btn-danger" value="新员工来啦！" id="btn1" />--%>
                    <asp:Button ID="Button1" runat="server" CssClass="btn button_btn btn-danger" Text="新员工来啦！" OnClick="Button1_Click1" />
                    <%--<div id="add" style="text-align:center;">
                        <asp:Label ID="Label1" runat="server" Text="员工账户："></asp:Label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="员工密码："></asp:Label>
                        <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAdd" runat="server" Text="添加员工" CssClass="btn button_btn bg-deep-blue" OnClick="btnAdd_Click" />
                    </div>--%>
                </div>
                <!--列表内容-->
                <div class="page_content clearfix mb15 table-module " id="rpt">
                    <asp:Repeater runat="server" ID="Repeater1" OnItemCommand="Repeater1_ItemCommand">
                        <HeaderTemplate>
                            <table>
                                <thead>
                                    <tr>
                                        <td>用户ID </td>
                                        <td>账号 </td>
                                        <td>密码</td>
                                        <td>操作</td>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tbody>
                                <tr>
                                    <td>
                                        <%# Eval("id") %>
                                    </td>
                                    <td>
                                        <%# Eval("aName") %>
                                    </td>
                                    <td>
                                        <%# Eval("aPwd") %>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="删除" CommandName="_del" CommandArgument='<%# Eval("id") %>' OnClientClick='return confirm("是否删除该信息？")' />
                                    </td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
