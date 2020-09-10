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
    public class libraryBLL
    {
        public static DataTable Select()
        {
            return libraryDAL.Select();
        }
    }   
}
