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
    public partial class AddStudio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if (id != 0)
                {
                    Button1.Text = "修改";
                    Model.Studio stu = StudioBLL.SelectID(id);

                    Label1.Text = stu.id.ToString();
                    txtStuName.Text = stu.sName;
                    txtStuTel.Text = stu.sTel;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //获取值
            var stuName = txtStuName.Text;
            var StuTel = txtStuTel.Text;
            //表赋值
            Studio stu = new Studio();
            stu.sName = stuName;
            stu.sTel = StuTel;
            stu.id = Convert.ToInt32(Label1.Text);
            //调用方法
            if (Button1.Text == "添加")
            {
                if (StudioBLL.Insert(stu) > 0)
                {
                    Response.Write("<script>alert('添加成功！');location.href='/html/Studio.aspx'</script>");
                }
            }
            if(Button1.Text == "修改")
            {
                if (StudioBLL.Update(stu) > 0)
                {
                    Response.Write("<script>alert('修改成功！');location.href='/html/Studio.aspx'</script>");
                }
            }
        }
    }
}