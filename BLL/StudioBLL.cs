using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using DAL;
using System.Data.SqlClient;

namespace BLL
{
    public class StudioBLL
    {
        public static DataTable Select()
        {
            return StudioDAL.Select();
        }

        public static int Delete(int id)
        {
            return StudioDAL.Delete(id);
        }

        public static int Insert(Studio stu)
        {
            return StudioDAL.Insert(stu);
        }
    }
}
