using BLL.Property;

using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class LoginManager
    {
        
        
            private DBhelper dbh = new DBhelper();
            public LoginProperty logpro = new LoginProperty();
            private SortedList S1 = new SortedList();


            public string Roleselect()
            {
                S1.Clear();
                S1.Add("email", logpro.E_Mail);
                S1.Add("password", logpro.Password);
                return dbh.executeprocedure(S1, "roleselect");
            }

    }
}
