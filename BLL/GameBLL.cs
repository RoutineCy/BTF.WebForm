using DAL;
using Model;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public class GameBLL
    {
        public static DataTable Select()
        {
            return GameDAL.Select();
        }
        public static List<Game_info> Select(Game_info selectwhere)
        {
            return GameDAL.Select(selectwhere);
        }
        public static List<Game_info> SelectProc(Game_info selectwhere, int PageIndex, int PageSize, ref int TotalCount)
        {
            return GameDAL.SelectProc(selectwhere, PageIndex, PageSize, ref TotalCount);
        }
        public static int Delete(int id)
        {
            return GameDAL.Delete(id);
        }
        public static int Insert(Game gty)
        {
            return GameDAL.Insert(gty);
        }

        public static Game SelectID(int id)
        {
            return GameDAL.SelectID(id);
        }
        public static int Update(Game gam)
        {
            return GameDAL.Update(gam);
        }
    }
}
