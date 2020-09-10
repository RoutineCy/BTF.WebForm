using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace BLL
{
    public class administratorsBLL
    {
        public static administrators Select(string name, string pwd)
        {
            return administratorsDAL.Select(name, pwd);
        }

        public static DataTable Select()
        {
            return administratorsDAL.Select();
        }

        public static int Delete(int id)
        {
            return administratorsDAL.Delete(id);
        }

        public static int Insert(string aName, string aPwd)
        {
            return administratorsDAL.Insert(aName, aPwd);
        }
    }
}
