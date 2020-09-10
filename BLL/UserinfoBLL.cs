using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
using System.Data.SqlClient;

namespace BLL
{
    public class UserinfoBLL
    {
        public static DataTable Select() {
            return UserinfoDAL.Select();
        }
    }
}
