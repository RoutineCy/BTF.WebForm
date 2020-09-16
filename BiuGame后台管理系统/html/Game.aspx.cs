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
    public partial class product_Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = GameBLL.Select();
                Repeater1.DataBind();

                doplistPrice.DataSource = StudioBLL.Select();
                doplistPrice.DataTextField = "sName";
                doplistPrice.DataValueField = "id";
                doplistPrice.DataBind();
                doplistPrice.Items.Insert(0, new ListItem("全部", "0"));

                doplisttype.DataSource = GTypeBLL.Select();
                doplisttype.DataTextField = "name";
                doplisttype.DataValueField = "id";
                doplisttype.DataBind();
                doplisttype.Items.Insert(0, new ListItem("全部", "0"));
                //GameList();
            }

        }

        private void GameList()
        {
            int id = Convert.ToInt32(doplisttype.SelectedValue);
            int sid = Convert.ToInt32(doplistPrice.SelectedValue);
            string gNames = Convert.ToString(gameNAME.Text);
            int gstate = Convert.ToInt32(Rbutton.SelectedValue);
            //初始化类
            Game_info game_Info = new Game_info()
            {
                gName = gNames,
                gState = gstate,
                gtid = id,
                Sid = sid,
            };

            //调用分页的业务方法
            int totalcount = 0;
            List<Game_info> list = GameBLL.SelectProc(game_Info, Gamepager.CurrentPageIndex, Gamepager.PageSize, ref totalcount);

            //给分页组件的总记录数属性赋值
            Gamepager.RecordCount = totalcount;

            //为Reapter组件数据源赋值
            Repeater1.DataSource = list;
            Repeater1.DataBind();











        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('暂无添加新游戏功能')</script>");
            Response.Redirect("AddGame.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument);
            if (name == "_del")
            {

                if (GameBLL.Delete(id) > 0)
                {
                    Response.Write("<script>alert('删除成功!')</script>");
                    Repeater1.DataSource = GameBLL.Select();
                    Repeater1.DataBind();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GameList();

        }
    }
}