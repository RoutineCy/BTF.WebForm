<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_home.aspx.cs" Inherits="BiuGame后台管理系统.index_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <meta name="format-detection" content="telephone=no, email=no, date=no, address=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <link href="css/bksystem.css" rel="stylesheet" type="text/css" />
    <link href="font/iconfont.css" rel="stylesheet" type="text/css" />
    <link href="css/module.css" rel="stylesheet" type="text/css" />
    <link href="css/pages.css" rel="stylesheet" type="text/css" />
    <title>系统框架首页</title>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/HUpages.js" type="text/javascript"></script>
    <style type="text/css">
        #rpt {
            margin: 0 auto;
            width: 100%;
            height: 100%;
            text-align: center;
        }

        table {
            margin: 0 auto;
            width: 100%;
            height: 100%;
            text-align: center;
        }
        #box-contentthis {
            width:auto;
            height:auto;
        }
        #box-contentthis2 {
            width:auto;
            height:auto;
        }
        #box-contentthis3 {
            width:auto;
            height:auto;
        }
        #box-contentthis4 {
            width:auto;
            height:auto;
        }
        #box-contentthis5 {
            width:auto;
            height:auto;
        }
        body {
            font-size:15px;
        }
    </style>
    <script>
        $(function () {
            $("table tr:even").css("background-color", "cyan");
        })
    </script>
    <!--[if lt IE 9]>
          <script src="js/html5shiv.js" type="text/javascript"></script>
          <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
        <![endif]-->
</head>
<body id="situation" class="backgrounddd">
    <form id="form1" runat="server">
        <div class="spacing_style"></div>
        <div class="pages-style">
            <div class="clearfix">
                <div class="col-md-6">
                    <div class="box-module">
                        <div class="box-title">状态栏</div>
                        <div class="box-content" id="box-contentthis2">
                            <div class="Shops_info clearfix">
                                <div class="left_shop">
                                    <div class="left_shop_logo">
                                        <div class="shop_logo">
                                            <img src="" onerror="this.src='images/noimage.gif',this.onerror=null" />
                                        </div>
                                        <a href="#" class="btn bg-deep-blue padding5">进入首页</a>
                                    </div>
                                    <div class="Shops_content">
                                        <p>
                                            <label class="name">商城名称：</label>BiuGame游戏平台
                                        </p>
                                        <ul class="clearfix">
                                            <li>
                                                <label class="name">平台等级：</label>最高级</li>
                                            <li>
                                                <label class="name">平台类型：</label>游戏平台</li>
                                            <li>
                                                <label class="name">销售类型：</label>娱乐</li>
                                            <li>
                                                <label class="name">平台ID：</label>2222</li>
                                            <li>
                                                <label class="name">商家ID：</label>88080</li>
                                            <li>
                                                <label class="name">开通时间：</label>2016-08-21</li>
                                        </ul>
                                    </div>
                                    <div class="right_shop">
                                        <p>店铺动态评分：</p>
                                        <ul>
                                            <li>
                                                <label class="name">相符描述</label><span class="score">4.5分</span></li>
                                            <li>
                                                <label class="name">服务态度</label><span class="score">4.0分</span></li>
                                            <li>
                                                <label class="name">发货速度</label><span class="score">4.6分</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="operating_style Quick_operation menuUl">
                                    <ul class="menulist">
                                        <li class="column-name">
                                            <a href="javascript:void(0)" data-id="" name="add_product.html" class="btn menuUl_title" title="添加产品">添加产品</a>
                                        </li>
                                        <li class="column-name">
                                            <a href="javascript:void(0)" data-id="" name="add_Advertising.html" class="btn menuUl_title" title="添加广告">添加广告</a>
                                        </li>
                                        <li class="column-name">
                                            <a href="javascript:void(0)" data-id="" name="add_Article.html" class="btn menuUl_title" title="添加文章">添加文章</a>
                                        </li>
                                        <li class="column-name">
                                            <a href="javascript:void(0)" data-id="" name="add_Singlepag.html" class="btn menuUl_title" title="新增单页面">新增单页面</a>
                                        </li>
                                        <li class="column-name">
                                            <a href="javascript:void(0)" title="个人信息" class="btn menuUl_title" name="administrators.html" data-id="111"><i class="iconfont icon-guanliyuan"></i>个人信息</a>
                                        </li>
                                        <li class="column-name">
                                            <a href="javascript:void(0)" title="系统设置" class="btn menuUl_title" name="system_info.html" data-id="46"><i class="iconfont icon-system-copy"></i>系统设置</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="box-module">
                        <div class="box-title">代办事项</div>
                        <div class="box-content clearfix" id="box-contentthis3">
                            <div class="col-xs-6 col-md-6  clearfix">
                                <div class="padding10">
                                    <a href="javascript:ovid()" class="tile-button btn_Plate hover-deep-white">
                                        <div class="carousel Module_info">
                                            <div class="left_img bg_color_gray padding10">
                                                <h3 class="title">待结算</h3>
                                                <span class="munsz">999</span>
                                            </div>
                                            <div class="right_info"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-6 clearfix">
                                <div class="padding10">
                                    <a href="javascript:ovid()" class="tile-button btn_Plate hover-deep-white">
                                        <div class="carousel Module_info">
                                            <div class="left_img bg_color_gray padding10">
                                                <h3 class="title">待审核</h3>
                                                <span class="munsz">99</span>
                                            </div>
                                            <div class="right_info"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-6  clearfix">
                                <div class="padding10">
                                    <a href="javascript:ovid()" class="tile-button btn_Plate hover-deep-white">
                                        <div class="carousel Module_info">
                                            <div class="left_img bg_color_gray padding10">
                                                <h3 class="title">消息</h3>
                                                <span class="munsz">19</span>
                                            </div>
                                            <div class="right_info"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-6  clearfix">
                                <div class="padding10">
                                    <a href="javascript:ovid()" class="tile-button btn_Plate hover-deep-white">
                                        <div class="carousel Module_info">
                                            <div class="left_img bg_color_gray padding10">
                                                <h3 class="title">提示</h3>
                                                <span class="munsz">19</span>
                                            </div>
                                            <div class="right_info"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-6  clearfix">
                                <div class="padding10">
                                    <a href="javascript:ovid()" class="tile-button btn_Plate hover-deep-white">
                                        <div class="carousel Module_info">
                                            <div class="left_img bg_color_gray padding10">
                                                <h3 class="title">审核</h3>
                                                <span class="munsz">5</span>
                                            </div>
                                            <div class="right_info"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-6  clearfix">
                                <div class="padding10">
                                    <a href="javascript:ovid()" class="tile-button btn_Plate hover-deep-white">
                                        <div class="carousel Module_info">
                                            <div class="left_img bg_color_gray padding10">
                                                <h3 class="title">评论</h3>
                                                <span class="munsz">29</span>
                                            </div>
                                            <div class="right_info"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="box-module">
                        <div class="box-title clickBombbox selected " data-type="arrow">登录状态<i class="iconfont icon-35_xiangxiajiantou arrow"></i></div>
                        <div class="box-content Bombbox" id="box-contentthis4">
                            <table class="table table_striped  table-hover">
                                <thead>
                                    <tr>
                                        <th>登录时间</th>
                                        <th>IP</th>
                                        <th>用户名</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2018-09-12 12:34</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-orange">在线</span></td>
                                    </tr>
                                    <tr>
                                        <td>2018-09-12 12:21</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-gray">离线</span></td>
                                    </tr>
                                    <tr>
                                        <td>2018-09-12 12:21</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-gray">离线</span></td>
                                    </tr>
                                    <tr>
                                        <td>2018-09-12 12:21</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-gray">离线</span></td>
                                    </tr>
                                    <tr>
                                        <td>2018-09-12 12:21</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-gray">离线</span></td>
                                    </tr>
                                    <tr>
                                        <td>2018-09-12 12:21</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-gray">离线</span></td>
                                    </tr>
                                    <tr>
                                        <td>2018-09-12 12:21</td>
                                        <td>192.168.0.156</td>
                                        <td>admin <span class="tab_prompt bg-gray">离线</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!---->
            <div class="clearfix">
                <div class="col-md-8">
                    <div class="box-module" >
                        <div class="box-title" >游戏库</div>
                        <div class="box-content" id="box-contentthis5" >
                            <div class="dd_echarts">
                                <div id="main" class="mainwidth" >
                                    <div class="page_content clearfix mb15 table-module " id="rpt">
                                        <asp:Repeater runat="server" ID="Repeater1" EnableViewState="false">
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
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                
        </div>
    </form>
</body>
<script>
    /*********************/
    require.config({
        paths: {
            echarts: './js/dist'
        }
    });
    require(
        [
            'echarts',
            'echarts/theme/macarons',
            'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
            'echarts/chart/bar'
        ],
        function (ec, theme) {
            var myChart = ec.init(document.getElementById('main'), theme);
            option = {
                title: {
                    text: '当周交易记录',
                    subtext: '每周7天的交易记录'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data: ['所有订单', '已完成', '未完成']
                },
                toolbox: {
                    show: true,
                    feature: {
                        mark: { show: true },
                        dataView: { show: true, readOnly: false },
                        magicType: { show: true, type: ['line', 'bar'] },
                        restore: { show: true },
                        saveAsImage: { show: true }
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        type: 'category',
                        boundaryGap: false,
                        data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        axisLabel: {
                            formatter: '{value}单'
                        }
                    }
                ],
                series: [
                    {
                        name: '所有订单',
                        type: 'line',
                        data: [110, 210, 150, 130, 125, 133, 106],
                        markPoint: {
                            data: [
                                { type: 'max', name: '最大值' },
                                { type: 'min', name: '最小值' }
                            ]
                        },
                        markLine: {
                            data: [
                                { type: 'average', name: '平均值' }
                            ]
                        }
                    },
                    {
                        name: '已完成',
                        type: 'line',
                        data: [110, 105, 140, 130, 110, 121, 100],
                        markPoint: {
                            data: [
                                { name: '周最低', value: -2, xAxis: 1, yAxis: -1.5 }
                            ]
                        },
                        markLine: {
                            data: [
                                { type: 'average', name: '平均值' }
                            ]
                        }
                    },
                    {
                        name: '未完成',
                        type: 'line',
                        data: [0, 25, 10, 10, 15, 12, 6],
                        markPoint: {
                            data: [
                                { name: '周最低', value: -2, xAxis: 1, yAxis: -1.5 }
                            ]
                        },
                        markLine: {
                            data: [
                                { type: 'average', name: '平均值' }
                            ]
                        }
                    }
                ]
            };

            myChart.setOption(option);
        }
    );
</script>
</html>
