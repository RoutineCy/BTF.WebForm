using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace BLL
{
    public class GTypeBLL
    {
        public static DataTable Select()
        {
            return GTypeDAL.Select();
        }

        public static int Update(int id, string name)
        {
            return GTypeDAL.Update(id, name);
        }
        public static int Delete(int id)
        {
            return GTypeDAL.Delete(id);
        }
        public static int InsertProc(string name)
        {
            return GTypeDAL.InsertProc(name);
        }
    }
}
