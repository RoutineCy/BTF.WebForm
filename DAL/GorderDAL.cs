using BiuGame后台管理系统;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace DAL
{
    public class GorderDAL
    {
        public static DataTable SelectProc() {
            string sql = "Gorder_Select";
            return DBHelper.Query(sql);
        }

        public static int Delete (int id)
        {
            string sql = "delete from Gorder where id ="+id;
            return DBHelper.ExecuteNonQueryProc(sql);

        }
    }
}
