﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using Model;
using BiuGame后台管理系统;
using System.Data;

namespace DAL
{
    public class administratorsDAL
    {
        public static administrators Select(string name, string pwd)
        {
            string sql = "select * from administrators where Apassword=@Apassword and Aaccount=@Atname or Atname=@Atname and Apassword=@Apassword ";
            SqlParameter[] pams =
            {
                new SqlParameter ("@Atname",name),
                new SqlParameter ("@Apassword",pwd)
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

        public static DataTable Select()
        {
            string sql = "select * from administrators";
            return DBHelper.Query(sql); 

        }

        public static int Delete(int id)
        {
            string sql = "delete from administrators where id="+id;
            return DBHelper.ExecuteNonQuery(sql);
        }

        public static int Insert(string aName,string aPwd)
        {
            string sql = string.Format("insert into administrators values ('{0}','{1}')", aName, aPwd);
            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
