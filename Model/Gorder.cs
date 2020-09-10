using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// 订单记录
    /// </summary>
    public class Gorder
    {
        /// <summary>
        /// 订单id
        /// </summary>
        public int id { get; set; }

        /// <summary>
        /// 购买用户
        /// </summary>
        public int oUid { get; set; }

        /// <summary>
        /// 购买游戏
        /// </summary>
        public int oGid { get; set; }

        /// <summary>
        /// 购买时间
        /// </summary>
        public DateTime oTime { get; set; }
    }
}
