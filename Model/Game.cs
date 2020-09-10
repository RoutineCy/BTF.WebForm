using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// 游戏库
    /// </summary>
    public class Game
    {   
        /// <summary>
        /// 游戏ID
        /// </summary>
        public int id { get; set; }

        /// <summary>
        /// 游戏分类ID
        /// </summary>
        public int gTid { get; set; }

        /// <summary>
        /// 游戏厂商ID
        /// </summary>
        public int gSId { get; set; }

        /// <summary>
        /// 游戏名
        /// </summary>
        public string gName { get; set; }

        /// <summary>
        /// 游戏价格
        /// </summary>
        public double gPrice { get; set; }

        /// <summary>
        /// 上下架状态
        /// </summary>
        public int gState { get; set; }
    }
}
