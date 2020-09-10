using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

namespace BiuGame后台管理系统.html
{
    public partial class Manufacturer_Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = StudioBLL.Select();
                Repeater1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('暂无添加厂商功能')</script>");
            Response.Redirect("AddStudio.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument);
            if (name == "_del")
            {

                if (StudioBLL.Delete(id) > 0)
                {
                    Response.Write("<script>alert('删除成功!')</script>");
                    Repeater1.DataSource = StudioBLL.Select();
                    Repeater1.DataBind();
                }
            }
        }
    }
}