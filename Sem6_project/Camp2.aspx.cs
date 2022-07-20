using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sem6_project
{
    public partial class Camp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            DataList2.Visible = true;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "join")
            { 
                
                Response.Redirect("joincamp.aspx?name="+e.CommandArgument.ToString());
               
            }

        }
    }
}