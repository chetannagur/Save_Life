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
    public partial class Contactus1 : System.Web.UI.Page
    {

        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;

        SqlCommand cmd; 
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connStr);
                
                con.Open();

                cmd = new SqlCommand("insert into contact values(@name,@lname,@email,@contact,@zip,@cmnt,@query)", con);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@lname", txtlast.Text);
                cmd.Parameters.AddWithValue("@contact", txtcont.Text);
                cmd.Parameters.AddWithValue("@zip", txtzip.Text);
                cmd.Parameters.AddWithValue("@cmnt", txtcmnt.Text);
                cmd.Parameters.AddWithValue("@query", DropDownList1.SelectedValue);
                
                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('You will get ans of your query...!!!');window,location='Contactus1.aspx';", true);
            }
            catch (Exception ae)
            {
                Console.WriteLine(ae.Message);
            }
            
        }
    }
}