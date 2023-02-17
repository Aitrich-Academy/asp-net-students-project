using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{
   public  class LoginProperty
    {
            public int Id { get; set; }
            public int log_Id { get; set; }
            public string Username { get; set; }
            public string E_Mail { get; set; }
            public string Password { get; set; }
            public string Role { get; set; }
        
    }
}
