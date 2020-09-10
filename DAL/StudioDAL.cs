using BiuGame后台管理系统;
using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class StudioDAL
    {
        public static DataTable Select() {
            string sql = " select * from Studio ";
            return DBHelper.Query(sql);
        }

        public static int Delete(int id)
        {
            string sql = "delete from Studio where id =" + id;
            return DBHelper.ExecuteNonQuery(sql);
        }
        public static int Insert(Studio stu)
        {
            string sql = string.Format("insert into Studio values ('{0}','{1}')", stu.sName, stu.sTel);
            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
