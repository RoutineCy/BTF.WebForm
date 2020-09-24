using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Area
    {
        /// <summary>
        /// 主键
        /// </summary>
        public int CodeID { get; set; }
        /// <summary>
        /// 地区名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 父ID
        /// </summary>
        public int parentID { get; set; }
    }
}
