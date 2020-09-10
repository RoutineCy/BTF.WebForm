using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// 用户游戏库
    /// </summary>
    public class library
    {
        /// <summary>
        /// 库id
        /// </summary>
        public int id { get; set; }

        /// <summary>
        /// 收藏夹
        /// </summary>
        public int lCollection { get; set; }

        /// <summary>
        /// 隐藏游戏
        /// </summary>
        public int lhide { get; set; }
    }
}
