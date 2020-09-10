using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// 管理员
    /// </summary>
    public class administrators
    {
        /// <summary>
        /// 管理员ID
        /// </summary>
        public int id { get; set; }
        /// <summary>
        /// 账号名
        /// </summary>
        public string aName { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string aPwd { get; set; }
    }
}
