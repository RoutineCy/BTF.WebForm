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
            //调用方法
            if (StudioBLL.Insert(stu) > 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='/html/Studio.aspx'</script>");
            }
        }
    }
}