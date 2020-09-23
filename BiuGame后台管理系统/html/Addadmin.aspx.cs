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
    public partial class Addadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if (id != 0)
                {
                    btnAdd.Text = "修改";
                    Model.administrators admin = administratorsBLL.SelectID(id);

                    lalID.Text = admin.id.ToString();
                    txtName.Text = admin.aName;
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //获取值
            var sname = txtName.Text;
            var spwd = txtPwd.Text;


            //判断添加还是修改
            if (btnAdd.Text == "添加员工")
            {
                //调用方法
                if (administratorsBLL.Insert(sname, spwd) > 0)
                {
                    Response.Write("<script>alert('添加成功！');");

                    Response.Redirect("/html/administrators.aspx");
                }
            }
            else
            {
                //给表赋值
                Model.administrators admin = new Model.administrators();
                admin.id = Convert.ToInt32(lalID.Text);
                admin.aName = sname;
                admin.aPwd = spwd;

                if (administratorsBLL.Update(admin) > 0)
                {
                    Response.Write("<script>alert('修改成功！');");

                    Response.Redirect("/html/administrators.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("/html/administrators.aspx");
        }

        protected void cbShow_CheckedChanged(object sender, EventArgs e)
        {
            //if (cbShow.Checked)
            //{
            //    txtPwdOK.TextMode = TextBoxMode.SingleLine;
            //    txtPwd.TextMode = TextBoxMode.SingleLine;
            //}
            //else
            //{
            //    txtPwdOK.TextMode = TextBoxMode.Password;
            //    txtPwd.TextMode = TextBoxMode.Password;
            //}
        }
    }
}