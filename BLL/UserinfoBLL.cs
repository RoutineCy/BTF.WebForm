using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
using System.Data.SqlClient;
using Model;

namespace BLL
{
    public class UserinfoBLL
    {
        public static DataTable Select()
        {
            return UserinfoDAL.Select();
        }
        public static int Insert(Userinfo user)
        {
            return UserinfoDAL.Insert(user);
        }
        public static int Update(Userinfo user)
        {
            return UserinfoDAL.Update(user);
        }
    }
}
