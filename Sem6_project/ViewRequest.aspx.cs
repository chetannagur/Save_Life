using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Sem6_project
{
    public partial class ViewRequest : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Add(DateTime.Now.ToShortDateString());
        }
       
    }
}

                 