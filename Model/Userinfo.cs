using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// 用户信息表
    /// </summary>
    public class Userinfo
    {
        /// <summary>
        /// 用户id
        /// </summary>
        public int id { get; set; }
        
        /// <summary>
        /// 用户名
        /// </summary>
        public string userName { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string userPwd { get; set; }

        /// <summary>
        /// 余额
        /// </summary>
        public double uBalance { get; set; }
    }
}
