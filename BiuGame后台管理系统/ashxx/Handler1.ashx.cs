using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
using Model;
using System.Web.SessionState;

namespace BiuGame后台管理系统.ashxx
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            var req = context.Request;
            string name = context.Request.Form["name"];
            string pwd = context.Request.Form["pwd"];
            string Codes_text = context.Request.Form["Codes_text"];

            string msg = $"输入姓名：{name},密码：{pwd}";
            if (context.Session["code"] == null || context.Session["code"].ToString() != Codes_text)
            {

                context.Response.Write("验证码错误！");
            }
            else
            {
                Model.administrators admin = administratorsBLL.Select(name, pwd);
                int num = 0;

                if (admin == null)
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("账号或密码错误");
                }
                else
                {
                    num = 1;
                    context.Response.ContentType = "text/plain";
                    context.Response.Write(num);
                }
            }
 }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}