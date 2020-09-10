using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
using System.Data.SqlClient;

namespace BLL
{
    public class GorderBLL
    {
        public static DataTable SelectProc() {
            return GorderDAL.SelectProc();
        }

        public static int Delete(int id)
        {
            return GorderDAL.Delete(id);
        }
    }
}
