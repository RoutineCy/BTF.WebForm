﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

namespace BiuGame后台管理系统
{
    public partial class administrators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = administratorsBLL.Select();
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('暂无添加新员工功能')</script>");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument);
            if (name == "_del")
            {
                if (administratorsBLL.Delete(id) >0)
                {
                    Response.Write("<script>alert('删除成功!')</script>");
                    Repeater1.DataSource = administratorsBLL.Select();
                    Repeater1.DataBind();
                }
            }else if (name == "_upd")
            {
                Response.Redirect("/html/Addadmin.aspx?id=" + id);
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/html/Addadmin.aspx");
        }
    }
}