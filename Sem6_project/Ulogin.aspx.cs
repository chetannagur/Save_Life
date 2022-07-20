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
    public partial class Ulogin : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("SignUp.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            
            string uid = TextBox1.Text;
            string pass = TextBox2.Text;
            con.Open();
            string qry = "select * from Registration where Email='" + uid + "' and Password='" + pass + "'";
            cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Email"] = TextBox1.Text;
                Session["Date"] = DateTime.Now.ToString("yyyy/MM/dd");
                Response.Redirect("Home.aspx");
            }
            else
            {
                errlbl.Visible = true;
                errlbl.Text = "UserId & Password Is not correct Try again..!!";

            }

            con.Close();
        }

        protected void btnfrgtpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgott.aspx");
        }
    }
}