using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace BiuGame后台管理系统
{
    public class DBHelper
    {   
        

        //连接数据库字符串
        static string strCon = ConfigurationManager.ConnectionStrings["BiuGame"].ConnectionString;

        //封装增删改的方法
        public static int ExecuteNonQueryProc(string sql, params SqlParameter[] pame)
        {
            //声明连接对象
            using (SqlConnection con = new SqlConnection(strCon))
            {
                //声明数据库操作命令对象
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    //判断参数化查询的参数手机为空并且个数是否大于零
                    if (pame != null && pame.Length > 0)
                    {
                        //把参数化查询的值添加至SqlCommand对象属性中
                        com.Parameters.AddRange(pame);
                    }
                    //判断当前连接是否关闭，如果关闭则打开
                    if (con.State == ConnectionState.Closed)
                    {
                        //打开连接
                        con.Open();
                    }
                    return com.ExecuteNonQuery();
                }
            }
        }

        public static int ExecuteNonQuery(string sql, params SqlParameter[] pame)
        {
            //声明连接对象
            using (SqlConnection con = new SqlConnection(strCon))
            {
                //声明数据库操作命令对象
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    //判断参数化查询的参数手机为空并且个数是否大于零
                    if (pame != null && pame.Length > 0)
                    {
                        //把参数化查询的值添加至SqlCommand对象属性中
                        com.Parameters.AddRange(pame);
                    }
                    //判断当前连接是否关闭，如果关闭则打开
                    if (con.State == ConnectionState.Closed)
                    {
                        //打开连接
                        con.Open();
                    }
                    return com.ExecuteNonQuery();
                }
            }
        }

        //执行查询，返回首行首列
        public static object ExecuteScalar(string sql, params SqlParameter[] pame)
        {
            //声明连接对象
            using (SqlConnection con = new SqlConnection(strCon))
            {
                //声明数据库操作命令对象
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    //判断参数化查询的参数手机为空并且个数是否大于零
                    if (pame != null && pame.Length > 0)
                    {
                        //把参数化查询的值添加至SqlCommand对象属性中
                        com.Parameters.AddRange(pame);
                    }
                    //判断当前连接是否关闭，如果关闭则打开
                    if (con.State == ConnectionState.Closed)
                    {
                        //打开连接
                        con.Open();
                    }
                    return com.ExecuteScalar();
                }
            }
        }

        //执行查询，返回reader游标 （在线/连线式访问数据库）
        public static SqlDataReader ExecuteReader(string sql, params SqlParameter[] pame)
        {
            //声明连接对象
            SqlConnection con = new SqlConnection(strCon);

            //声明数据库操作命令对象
            using (SqlCommand com = new SqlCommand(sql, con))
            {
                //判断参数化查询的参数手机为空并且个数是否大于零
                if (pame != null && pame.Length > 0)
                {
                    //把参数化查询的值添加至SqlCommand对象属性中
                    com.Parameters.AddRange(pame);
                }
                //判断当前连接是否关闭，如果关闭则打开
                if (con.State == ConnectionState.Closed)
                {
                    //打开连接
                    con.Open();
                }
                return com.ExecuteReader();

            }
        }
        public static SqlDataReader ExecuteReaderProc(string sql, params SqlParameter[] pame)
        {
            //声明连接对象
            SqlConnection con = new SqlConnection(strCon);

            //声明数据库操作命令对象
            using (SqlCommand com = new SqlCommand(sql, con))
            {
                com.CommandType = CommandType.StoredProcedure;
                //判断参数化查询的参数手机为空并且个数是否大于零
                if (pame != null && pame.Length > 0)
                {
                    //把参数化查询的值添加至SqlCommand对象属性中
                    com.Parameters.AddRange(pame);
                }
                //判断当前连接是否关闭，如果关闭则打开
                if (con.State == ConnectionState.Closed)
                {
                    //打开连接
                    con.Open();
                }
                return com.ExecuteReader();

            }
        }
        //查询列表，返回DataTable (离线式访问数据库)
        public static DataTable Query(string sql, params SqlParameter[] pame)
        {
            SqlDataAdapter sda = new SqlDataAdapter(sql, strCon);
            //空表
            DataTable dt = new DataTable();

            if (pame != null && pame.Length > 0)
            {
                sda.SelectCommand.Parameters.AddRange(pame);
            }
            //填充
            sda.Fill(dt);
            //返回
            return dt;
        }


        //查询列表，返回DataTable (离线式访问数据库(存储过程版本))
        public static DataTable QueryProc(string sql, params SqlParameter[] pame)
        {
            SqlDataAdapter sda = new SqlDataAdapter(sql, strCon);
            //空表
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();

            if (pame != null && pame.Length > 0)
            {
                sda.SelectCommand.Parameters.AddRange(pame);
            }
            //填充
            sda.Fill(dt);
            //返回
            return dt;
        }







        //static string connStr = ConfigurationManager.ConnectionStrings["LoginDB"].ConnectionString;
        ///// 增删改
        //public static int ExecuteNonQuery(string sql, params SqlParameter[] pams)
        //{
        //    using (SqlConnection conn = new SqlConnection(connStr))
        //    {
        //        using(SqlCommand cmd=new SqlCommand(sql, conn))
        //        {
        //            if (pams != null && pams.Length > 0)
        //            {
        //                //把定义好的SQL参数添加至SqlCommand中
        //                cmd.Parameters.AddRange(pams);
        //            }
        //            if (conn.State == ConnectionState.Closed)
        //            {
        //                //打开连接
        //                conn.Open();
        //            }
        //            //执行语句
        //            return cmd.ExecuteNonQuery();
        //        }
        //    }
        //}

        //public static object ExecuteScalar(string sql, params SqlParameter[] pams)
        //{
        //    using (SqlConnection conn = new SqlConnection(connStr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {
        //            if (pams != null && pams.Length > 0)
        //            {
        //                //把定义好的SQL参数添加至SqlCommand中
        //                cmd.Parameters.AddRange(pams);
        //            }
        //            if (conn.State == ConnectionState.Closed)
        //            {
        //                //打开连接
        //                conn.Open();
        //            }
        //            //执行语句
        //            return cmd.ExecuteScalar();
        //        }
        //    }
        //}
    }


}