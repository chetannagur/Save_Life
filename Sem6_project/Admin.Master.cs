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
    public partial class Admin : System.Web.UI.MasterPage
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        SqlCommand cmd;
        string url;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            if (Session["Email"] == null)
            {
                Response.Redirect("Plzlogin.aspx");
            }
            string email2 = Session["Email"].ToString();

            con.Open();
            cmd = new SqlCommand("select * from Registration Where Email = @email", con);
            cmd.Parameters.AddWithValue("@email", email2);
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {

                url = myReader["Image"].ToString();
            }
            

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}