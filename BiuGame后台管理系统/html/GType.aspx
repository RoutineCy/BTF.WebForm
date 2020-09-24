<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GType.aspx.cs" Inherits="BiuGame后台管理系统.html.Manufacturer_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <title>游戏分类管理</title>
    <script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="../js/HUpages.js" type="text/javascript"></script>
    <script src="../js/common.js" type="text/javascript"></script>
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
    <script>
        $(function () {
            $("table tr:even").css("background-color", "cyan");
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="pages-style">
            <%--<!--左侧菜单栏-->
	<div class="bk-con-menu " id="bk-con-menu">
					<div class="menubtn">
						<span class="close_btn samebtn"><i>隐藏</i></span>
						<span class="show_btn samebtn"><i>显示</i></span>
					</div>
					<div class="title-menu">栏目分类</div>
					<div class="breadcrumb" id="breadcrumb">
						<ul class="clearfix menu-section menulist" id="menu-section">
							
						</ul>
					</div>
				</div>--%>
            <!--右侧内容-->
            <div class="bk-con-message message-section" id="iframe_box">
                <!--编辑内容-->
                <div class="operation  mb15" style="text-align:center">
                    <%--<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加分类</button>--%>
                    <%--<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;编辑分类</button>--%>
                    <%--<asp:Button ID="Button2" runat="server" Text="编辑分类" CssClass="btn button_btn bg-deep-blue"  />--%>
                    <%--<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;删除分类</button>--%>
                    <%--<asp:Button ID="Button3" runat="server" Text="删除分类"  CssClass="btn button_btn bg-deep-blue" />--%>
                    <%--分类名称：<asp:TextBox ID="txtTypeName" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <asp:Button ID="Button1" runat="server" Text="添加分类" CssClass="btn button_btn btn-danger" OnClick="Button1_Click" />
                </div>
                <!--列表内容-->
                <div class="page_content clearfix mb15 table-module " id="rpt">
                    <asp:Repeater runat="server" ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" EnableViewState="false">
                        <HeaderTemplate>
                            <table>
                                <thead>
                                    <tr>
                                        <td>游戏分类ID </td>
                                        <td>分类名称</td>
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
                                        <%# Eval("name") %>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="删除" CommandName="_del" CommandArgument='<%# Eval("id") %>' OnClientClick='return confirm("是否删除该信息？")' />
                                        <asp:Button ID="Button3" runat="server" Text="修改" CommandName="_upd" CommandArgument='<%# Eval("id") %>' />
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
    <script>
        $(function () {
            //内页框架结构编辑
            $("#situation").Hupage({
                slide: '#breadcrumb',
                padding: 15,
                menuModule: '#bk-con-menu', //菜单模块
                pagecontent: '.page_content',//自定义属性
                operation: '.operation',//自定义属性
                scrollbar: function (e) {
                    e.niceScroll({
                        cursorcolor: "#dddddd",
                        cursoropacitymax: 1,
                        touchbehavior: false,
                        cursorwidth: "3px",
                        cursorborder: "0",
                        cursorborderradius: "3px",
                    });
                },
                expand: function (thisBox, settings) {
                    var pc = "";
                    $(settings.pagecontent).css("margin-bottom") != null ? pc = parseInt($(settings.pagecontent).css("margin-bottom").replace("px", "")) : '';
                    $(settings.pagecontent).css({ height: $(window).height() - $(settings.operation).outerHeight() - pc - (settings.padding * 2) })
                    settings.scrollbar($(settings.slide) && $(settings.pagecontent));
                }//自定义方法
            });
        });
    </script>
</body>
</html>
