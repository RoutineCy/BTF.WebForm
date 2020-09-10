using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using BiuGame后台管理系统;
using Model;

namespace DAL
{
    public class commentDAL
    {
        public static DataTable Select()
        {
            string sql = "select * from comment ";
            return DBHelper.Query(sql);
        }
    }
}
