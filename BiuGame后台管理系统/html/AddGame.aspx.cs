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
    public partial class AddGame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //下拉菜单
                droType.DataSource = GTypeBLL.Select();
                droType.DataBind();
                droShop.DataSource = StudioBLL.Select();
                droShop.DataBind();


                //编辑
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if (id != 0)
                {
                    Button1.Text = "修改";
                    Game gam = GameBLL.SelectID(id);
                    var name = gam.gName;

                    Label1.Text = id.ToString();
                    txtName.Text = name;
                    txtPrice.Text = gam.gPrice.ToString();
                    droType.SelectedValue = gam.gTid.ToString();
                    droShop.SelectedValue = gam.gSId.ToString();
                    rdostate.SelectedValue = gam.gState.ToString();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //获取值
            var name = txtName.Text;
            var price = txtPrice.Text;
            var type = droType.SelectedValue;
            var shop = droShop.SelectedValue;
            var state = rdostate.SelectedValue;
            //赋值表
            Game game = new Game();
            game.gName = txtName.Text;
            game.gPrice = Convert.ToDouble(price);
            game.gSId = Convert.ToInt32(shop);
            game.gTid = Convert.ToInt32(type);
            game.gState = Convert.ToInt32(state);

            //判断修改还是添加
            if (Button1.Text == "添加")
            {
                //添加
                int num = GameBLL.Insert(game);
                if (num > 0)
                {
                    Response.Write("<script>alert('添加成功！');location.href='/html/Game.aspx'</script>");
                }
            }
            else
            {
                //修改
                game.id = Convert.ToInt32(Label1.Text);
                int num = GameBLL.Update(game);
                if (num > 0)
                {
                    Response.Write("<script>alert('修改成功！');location.href='/html/Game.aspx'</script>");
                }

            }
        }
    }
}