using BiuGame后台管理系统;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
    public class libraryDAL
    {
        public static DataTable Select() {
            string sql = "select * from library";
            return DBHelper.Query(sql);
        }
    }
}
