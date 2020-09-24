using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using BiuGame后台管理系统;
using Model;

namespace DAL
{
    public class UserinfoDAL
    {
        public static DataTable Select()
        {
            string sql = "select * from Userinfo";
            return DBHelper.Query(sql);
        }

        public static int Insert(Userinfo user)
        {
            string sql = $"insert into Userinfo values ('{user.userName}','{user.userPwd}',{user.userSex},'{user.userSite}','{user.userTel}',{user.uBalance})";
            return DBHelper.ExecuteNonQuery(sql);
        }

        public static int Update(Userinfo user)
        {
            string sqlproc = "Userinfo_Updane";
            SqlParameter[] pams =
            {
                new SqlParameter ("@id",user.id),
                new SqlParameter ("@userName",user.userName),
                new SqlParameter ("@userPwd",user.userPwd),
                new SqlParameter ("@userSex",user.userSex),
                new SqlParameter ("@userSite",user.userSite),
                new SqlParameter ("@userTel",user.userTel),
                new SqlParameter ("@uBalance",user.uBalance)
            };
            return DBHelper.ExecuteNonQueryProc(sqlproc,pams);
        }
    }
}
