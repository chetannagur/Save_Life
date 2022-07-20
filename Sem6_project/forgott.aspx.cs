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
    public partial class forgott : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;

        SqlCommand cmd;
        string email, ans, que,pass;
        protected void Page_Load(object sender, EventArgs e)
        {

        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand cmd2;
            cmd2 = new SqlCommand("Update Registration set Password = @pass where Email = @email and Ans = @ans", con);
            cmd2.Parameters.AddWithValue("@pass", txtpass.Text);
            cmd2.Parameters.AddWithValue("@email", txtemail.Text);
            cmd2.Parameters.AddWithValue("@ans", txtans.Text );
            cmd2.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Password Changed Sucessfully...!!!');window,location='Ulogin.aspx';", true);
        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("select * from Registration Where Email = @email", con);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                que = myReader["Que"].ToString();
            }
            txtque.Text = que;
            con.Close();
        }
    }
}