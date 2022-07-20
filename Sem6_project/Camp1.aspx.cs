using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sem6_project
{
    public partial class Camp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
        }

      

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            DataList2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
        }

      
    }
}