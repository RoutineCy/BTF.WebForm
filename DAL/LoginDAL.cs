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
    }
}
