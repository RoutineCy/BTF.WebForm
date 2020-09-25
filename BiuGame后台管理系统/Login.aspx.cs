﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using BLL;
using Model;

namespace BiuGame后台管理系统
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            var name = username.Value;
            var pwd = userpwd.Value;
            string validate = Codes_text.Value.Trim();

            Userinfo user = LoginBLL.SelectUser(name, pwd);


            if (user == null)
            {
                Label1.Text = "账号或密码不正确";
                username.Value = "";
            }
            else
            {
                Response.Redirect("http://localhost:60991/Index.aspx?name=" + user.userName);
            }

        }
    }
}