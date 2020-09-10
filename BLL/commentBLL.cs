using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class commentBLL
    {
        public static DataTable Select() {
            return commentDAL.Select();
        }
    }
}
