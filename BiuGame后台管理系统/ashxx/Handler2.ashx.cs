using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.SessionState;

namespace BiuGame后台管理系统.ashxx
{
    /// <summary>
    /// Handler2 的摘要说明
    /// </summary>
    public class Handler2 : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            using (Bitmap bitmap = new Bitmap(60, 30))
            {
                using (Font f = new Font("宋体", 20))
                {
                    using (Graphics g = Graphics.FromImage(bitmap))
                    {
                        Random r = new Random();
                        int validata = r.Next(1000, 9999);//随机生成四位纯数字的验证码
                        context.Session["code"] = validata;//保存在Session内置对象中
                        g.DrawString(validata.ToString(), f, Brushes.Red, new PointF(0, 0));
                    }
                }
                bitmap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
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