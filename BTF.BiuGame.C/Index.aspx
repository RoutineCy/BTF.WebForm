<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BTF.BiuGame.C.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>商城首页</title>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        #bodybox {
            width: 100%;
            height: auto;
            text-align: center;
            background-color: rgba(0,0,0,0.2);
        }

        #headbox {
            width: 100%;
            height: 100px;
            font-size: 25px;
            color: white;
            background-color: rgba(0,0,0,0.4);
        }

            #headbox span {
                transition: all 0.2s;
                line-height: 98px;
                display: block;
                height: 98px;
                width: 98px;
                cursor: pointer;
            }

        .left {
            position: absolute;
            left: 50px;
        }

        .right {
            position: absolute;
            right: 50px;
        }

        .light {
            transition: all 0.2s;
            color: yellow;
            font-size:25.5px;
        }
        /*主页身体*/
        #shopbox {
            width: 100%;
            height: 800px;
        }

        /*主页尾部*/
        #foterbox {
            width: 100%;
            height: 150px;
            text-align: center;
            line-height: 150px;
            font-size: 20px;
            background-color: rgba(0,0,0,0.6);
        }
        #iframebox{
            margin-top:2%;
            border:2px solid black;
            width:95%;
            height: 400px;
            margin-left: 0px;
        }
        a{
            color:white;
        }
    </style>
    <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
    <script>
        $(function () {
            $("#headbox span").mousemove(function () {
                $(this).addClass("light").siblings().removeClass("light");

            });
            $("#headbox span").mouseleave(function () {
                $(this).removeClass("light");
            })
            $("#buy").click(function () {
                $("#iframebox").attr("src", "Shop.aspx");
            });
            $("#New").click(function () {
                $("#iframebox").attr("src", "NewUser.aspx");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="bodybox">
            <div id="headbox">
                <span class="left" id="buy">购买</span>
               <a href="https://localhost:44384/Login.aspx"><span class="right" style="right: 150px;" id="useron">登录</span></a>
                <span class="right" id="New">注册</span>
            </div>
            <div id="shopbox">
                <iframe src="Shop.aspx" id="iframebox"  frameborder="0">

                </iframe>
            </div>
            <div id="foterbox">
                <span>一切解释权归BIUGame所有</span>
            </div>
        </div>
    </form>
</body>
</html>
