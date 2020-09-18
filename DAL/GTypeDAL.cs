using BiuGame后台管理系统;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;

namespace DAL
{
    public class GTypeDAL
    {
        public static DataTable Select()
        {
            string sql = "select * from GType";
            return DBHelper.Query(sql);
        }
        public static int Update(int id,string name)
        {
            string sql = string.Format("update GType set GcfName='{0}' where id={1}", name,id);
            return DBHelper.ExecuteNonQuery(sql);
        }

        public static int Delete(int id)
        {
            //string sql1 = "select * from GType where GcfId=" + id;
            //if (DBHelper.Query(sql1).Rows.Count > 0)
            //{
            //    return -1;
            //}
            //else
            //{
                string sql = "delete from GType where id=" + id;
                
            return DBHelper.ExecuteNonQueryProc(sql);
            //}
        }

        public static int InsertProc(string name)
        {
            string sql = "GType_Insert";
            SqlParameter[] pams =
                {
                   new SqlParameter ("@name",name)
                };
            return DBHelper.ExecuteNonQueryProc(sql, pams);
        }

    }
}
