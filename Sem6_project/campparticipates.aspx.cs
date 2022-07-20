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
    public partial class campparticipates : System.Web.UI.Page
    {
        
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //fillradio();
        }
        protected void fillradio()
        {
            try
            {

                SqlConnection con = new SqlConnection(connStr);
                
                con.Open();


               cmd=new SqlCommand("select cname from joincamp   where  YEAR(joincamp.date)='" + DropDownList1.SelectedValue + "'",con);
               RadioButtonList1.DataSource = cmd.ExecuteReader();
               RadioButtonList1.DataTextField = "cname";
               RadioButtonList1.DataBind();
               con.Close();

               
            }
            catch (Exception ae)
            {
                
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            fillradio();
        }

      
    }
}