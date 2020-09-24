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

        public static Studio SelectID(int id)
        {
            string sql = "select * from Studio where id=" + id;
            DataTable dt = DBHelper.Query(sql);
            return new Studio
            {
                id = Convert.ToInt32(dt.Rows[0]["id"]),
                sName = Convert.ToString(dt.Rows[0]["sName"]),
                sTel = Convert.ToString(dt.Rows[0]["sTel"])
            };
        }

        public static int Update(Studio stu)
        {
            //string sqlproc = "Studio_Update";
            //SqlParameter[] pams =
            //{
            //    new SqlParameter ("@id",stu.id),
            //    new SqlParameter ("@sName",stu.sName),
            //    new SqlParameter ("@sTel",stu.sTel)
            //};
            //return DBHelper.ExecuteNonQueryProc(sqlproc, pams);
            string sql = $"update Studio set sName='{stu.sName}',sTel='{stu.sTel}' where id={stu.id}";

            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
