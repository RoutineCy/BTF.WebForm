<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="BiuGame后台管理系统.html.product_Manage" %>

<%@ Register TagPrefix="webdiyer" Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" %>
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
    <title>商品管理</title>
    <script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="../js/HUpages.js" type="text/javascript"></script>
    <script src="../js/common.js" type="text/javascript"></script>
    <style type="text/css">
        #rpt {
            display: block;
            margin: 0 auto;
            width: 1000px;
            height: auto;
            text-align: center;
        }

            #rpt > table {
                margin: 0 auto;
                width: 100%;
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
        <div>
            &nbsp;游戏名：
            <asp:TextBox ID="gameNAME" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    上架状态：
            <asp:RadioButtonList ID="Rbutton" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="0">已上架</asp:ListItem>
                <asp:ListItem Value="1">已下架</asp:ListItem>
                <asp:ListItem Value="-1" Selected="True">全部</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 游戏分类：<asp:DropDownList ID="doplisttype" runat="server"></asp:DropDownList>
            &nbsp;游戏厂商：
            <asp:DropDownList ID="doplistPrice" runat="server"></asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click" />


        </div>
        <div>
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
                    <div class="operation  mb15">
                        <%--<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加打折</button>--%>                        <%--<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加限免</button>--%>                        <%--<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加游戏</button>--%>
                        <asp:Button ID="Button1" runat="server" Text="添加游戏" CssClass="btn button_btn btn-danger" OnClick="Button1_Click" />
                    </div>
                    <!--列表内容-->
                    <div class="page_content clearfix mb15 table-module " id="rpt">
                        <asp:Repeater runat="server" ID="Repeater1" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table>
                                    <thead>
                                        <tr>
                                            <td>游戏ID </td>
                                            <td>游戏分类</td>
                                            <td>游戏厂商</td>
                                            <td>游戏名</td>
                                            <td>游戏价格</td>
                                            <td>上下架状态</td>
                                            <td>操作</td>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr>
                                        <td>
                                            <%# Eval("gtid") %>
                                        </td>
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
                                            <%# Convert.ToInt32(Eval("gState"))==0?"上架中":"已下架" %>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="删除" CommandName="_del" CommandArgument='<%# Eval("gtid") %>' OnClientClick='return confirm("是否删除该信息？")' />
                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <webdiyer:AspNetPager ID="Gamepager" runat="server" UrlPaging="true" AlwaysShow="true"
                            FirstPageText="首页" LastPageText="末页" 
                            NextPageText="下一页" PrevPageText="上一页" CustomInfoHTML="目前是第%CurrentPageIndex%页 / 总共%PageCount%页"
                            ShowCustomInfoSection="Right" PagingButtonSpacing="0px" NumericButtonCount="5"
                            CssClass="anpager" CurrentPageButtonClass="cpb" Width="850px">
                        </webdiyer:AspNetPager>
                    </div>
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
