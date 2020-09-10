using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BiuGame后台管理系统
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            Label1.Text = "欢迎您！" + name;
            if (!IsPostBack)
            {
                if (name == null)
                {
                    Response.Write("<script>alert('请先登录！');location.replace('Login.aspx');</script>");
                }
            }
        }
    }
}