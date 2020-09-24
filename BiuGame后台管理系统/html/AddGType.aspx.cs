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
    public partial class AddGType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if (id != 0)
                {
                    Button1.Text = "修改";
                    GType gty = GTypeBLL.SelectID(id);

                    lalID.Text = gty.id.ToString();
                    TextBox1.Text = gty.name;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            if (Button1.Text == "添加")
            {
                if (GTypeBLL.InsertProc(name) > 0)
                {
                    Response.Write("<script>alert('添加分类成功！')</script>");

                    Response.Redirect("/html/GType.aspx");
                }
            }else if (Button1.Text == "修改")
            {
                GType gty = new GType();
                gty.id = Convert.ToInt32(lalID.Text);
                gty.name = name;
                if (GTypeBLL.Update(gty) > 0)
                {
                    Response.Write("<script>alert('修改分类成功！')</script>");
                    Response.Redirect("/html/GType.aspx");
                }
            }
        }
    }
}