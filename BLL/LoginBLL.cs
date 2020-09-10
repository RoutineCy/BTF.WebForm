using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace BLL
{
    public class LoginBLL
    {
        public static administrators Select(string name, string pwd)
        {
            return LoginDAL.Select(name, pwd);
        }
    }
}
