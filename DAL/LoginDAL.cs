using BiuGame后台管理系统;
using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
    public class LoginDAL
    {
        public static administrators Select(string name,string pwd)
        {
            string sql = "select * from [administrators] where aName=@aName and aPwd=@aPwd";
            SqlParameter[] pams =
            {
                new SqlParameter ("@aName",name),
                new SqlParameter ("@aPwd",pwd)
            };
            SqlDataReader reader = DBHelper.ExecuteReader(sql, pams);

            administrators user = null;
            if (reader.Read())
            {
                user = new administrators()
                {
                    id = Convert.ToInt32(reader["id"]),
                    aName = Convert.ToString(reader["aName"]),
                    aPwd = Convert.ToString(reader["aPwd"])
                };
            }
            reader.Close();

            return user;
        }

        public static Userinfo SelectUser(string name,string pwd)
        {
            string sql = "select * from [Userinfo] where userName=@userName and userPwd=@userPwd";
            SqlParameter[] pams =
            {
                new SqlParameter ("@userName",name),
                new SqlParameter ("@userPwd",pwd)
            };
            SqlDataReader reader = DBHelper.ExecuteReader(sql, pams);

            Userinfo user = null;
            if (reader.Read())
            {
                user = new Userinfo()
                {
                    id = Convert.ToInt32(reader["id"]),
                    userName = Convert.ToString(reader["userName"]),
                    userPwd = Convert.ToString(reader["userPwd"]),
                    userSex = Convert.ToString(reader["userSex"]),
                    userSite = Convert.ToString(reader["userSite"]),
                    userTel = Convert.ToString(reader["userTel"]),
                    uBalance = Convert.ToDouble(reader["uBalance"])
                };
            }
            reader.Close();

            return user;
        }
    }
}
