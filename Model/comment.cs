using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// 游戏评论
    /// </summary>
    public class comment
    {
        /// <summary>
        /// 评论id
        /// </summary>
        public int id { get; set; }

        /// <summary>
        /// 评论游戏
        /// </summary>
        public int cgid { get; set; }

        /// <summary>
        /// 评论用户
        /// </summary>
        public int cUid { get; set; }

        /// <summary>
        /// 评论
        /// </summary>
        public string cment { get; set; }

        /// <summary>
        /// 评论时间
        /// </summary>
        public DateTime cTime { get; set; }
    }
}
