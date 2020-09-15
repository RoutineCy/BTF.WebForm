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
    public class GameDAL
    {
        public static DataTable Select()
        {
            string sql = "Game_SelectWhere";
            return DBHelper.QueryProc(sql);
        }

        //public static List<Game_info> Select(Game_info selectwhere) {
        //    StringBuilder sb = new StringBuilder();
        //    List<string> listwhere = new List<string>();

        //    List<SqlParameter> listpars = new List<SqlParameter>();
        //    //自定义sql查询语句
        //    string sql = "select Studio.sName,name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id";

        //    sb.Append(sql);

        //    if (selectwhere.id > 0)
        //    {
        //        listwhere.Add("Game.gTid=@gTid");
        //        listpars.Add(new SqlParameter("@gTid", selectwhere.id));
        //    }
        //    if (selectwhere.Sid > 0)
        //    {
        //        listwhere.Add("Game.gSId=@gSId");
        //        listpars.Add(new SqlParameter("@gSId", selectwhere.Sid));
        //    }
        //    if (selectwhere.gState >= 0)
        //    {
        //        listwhere.Add("Game.gState=@gState");
        //        listpars.Add(new SqlParameter("@gState", selectwhere.gState));
        //    }
        //    if (selectwhere.gName != null)
        //    {
        //        listwhere.Add("Game.gName like @gName");
        //        listpars.Add(new SqlParameter("@gName", "%" + selectwhere.gName + "%"));
        //    }
        //    if (listwhere.Count > 0)
        //    {
        //        sb.Append($" and {string.Join(" and ", listwhere.ToArray())}");
        //    }

        //    SqlDataReader sdr = DBHelper.ExecuteReader(sb.ToString(), listpars.ToArray());

        //    List<Game_info> listSales = new List<Game_info>();

        //    if (sdr.HasRows)
        //    {
        //        while (sdr.Read())
        //        {
        //            Game_info dt = new Game_info()
        //            {
        //                id = Convert.ToInt32(sdr["id"]),
        //                Sid = Convert.ToInt32(sdr["gSId"]),
        //                gName = Convert.ToString(sdr["gName"]),
        //                gState = Convert.ToInt32(sdr["gState"]),
        //                gPrice = Convert.ToDouble(sdr["gPrice"]),
        //                name = Convert.ToString(sdr["name"]),
        //                sName = Convert.ToString(sdr["sName"])
        //            };
        //            listSales.Add(dt);

        //        }
        //    }
        //    sdr.Close();
        //    return listSales;

        //}
        public static List<Game_info> SelectProc(Game_info selectwhere,int PageIndex, int PageSize, ref int TotalCount)
        {
            //自定义sql查询语句
            string sql = "Game_Select";
            SqlParameter[] pams =
            {
                new SqlParameter ("@GType_id",selectwhere.gtid),
                new SqlParameter ("@Studio_id",selectwhere.Sid),
                new SqlParameter ("@Game_gState",selectwhere.gState),
                new SqlParameter ("@Game_gName",selectwhere.gName==null?"":selectwhere.gName),
                new SqlParameter ("@PageIndex",PageIndex),
                new SqlParameter ("@PageSize",PageSize),
                new SqlParameter ("@TotalCount",TotalCount)
            };
            //指明TotalCount 参数为输出类型
            pams[6].Direction = ParameterDirection.Output;

            SqlDataReader sdr = DBHelper.ExecuteReaderProc(sql, pams);

            List<Game_info> listSales = new List<Game_info>();

            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    Game_info dt = new Game_info()
                    {
                        gtid = Convert.ToInt32(sdr["id"]),
                        Sid = Convert.ToInt32(sdr["gSId"]),
                        gName = Convert.ToString(sdr["gName"]),
                        gState = Convert.ToInt32(sdr["gState"]),
                        gPrice = Convert.ToDouble(sdr["gPrice"]),
                        name = Convert.ToString(sdr["name"]),
                        sName = Convert.ToString(sdr["sName"])
                    };
                    listSales.Add(dt);

                }
                sdr.Close();

                //获取存储过程中TotalCount的值，一定在游标关闭之后！
                TotalCount = Convert.ToInt32(pams[6].Value);
            }
            return listSales;

        }


        public static int Delete(int id)
        {
            string sql = "delete from Game where id=" + id;
            return DBHelper.ExecuteNonQuery(sql);
        }

        public static int Insert(Game gty)
        {
            string sql = string.Format("insert into Game values ({0},{1},'{2}',{3},{4})", gty.gTid, gty.gSId, gty.gName, gty.gPrice, gty.gState);
            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
