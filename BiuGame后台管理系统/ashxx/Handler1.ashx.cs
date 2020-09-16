using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
using Model;

namespace BiuGame后台管理系统.ashxx
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var req = context.Request;
            string name = context.Request.Form["name"];
            string pwd = context.Request.Form["pwd"];

            string msg = $"输入姓名：{name},密码：{pwd}";

            //Model.administrators admin = administratorsBLL.Select(name,pwd);
            //int num = 0;
            //if (admin == null)
            //{
            //    num = 1;
            //}
            //else
            //{
            //    num = 0;
            //}

            context.Response.ContentType = "text/plain";
            context.Response.Write(msg);
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