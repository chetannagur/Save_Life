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
    public partial class SignUp : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;

        SqlCommand cmd;
        string gender, filename,que;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtque.Visible = false;

        }

        protected void fevanimal_CheckedChanged(object sender, EventArgs e)
        {

           

                txtque.Visible = true;
          

        }

        protected void fevplace_CheckedChanged(object sender, EventArgs e)
        {
            

                txtque.Visible = true;
            
        }

        protected void fevdish_CheckedChanged(object sender, EventArgs e)
        {
           

                txtque.Visible = true;
         
        }

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            if (rbmale.Checked)
            {
                gender = "Male";
            }
            else if (rbfemale.Checked)
            {
                gender = "Female";
            }
            if (fevanimal.Checked)
            {
               
                que = "Your Fev. Animal";
            }
            else if (fevplace.Checked)
            {
                
                que = "Your Fev. Animal";
            }
            else if (fevdish.Checked)
            {
                
                que = "Your Fev. Animal";
            }

            try
            {

                SqlConnection con = new SqlConnection(connStr);
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/images/" + filename));
                con.Open();

                cmd = new SqlCommand("insert into Registration values(@name,@email,@mobile,@gender,@age,@bg,@weight,@height,@image,@pass,@add,@city,@que,@ans)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", TxtEmail.Text);
                cmd.Parameters.AddWithValue("@mobile", TxtMobile.Text);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@age", ddAge.SelectedValue);
                cmd.Parameters.AddWithValue("@bg", ddbg.SelectedValue);
                cmd.Parameters.AddWithValue("@weight", txtweight.Text);
                cmd.Parameters.AddWithValue("@height", txtheight.Text);
                cmd.Parameters.AddWithValue("@image", "images/" + filename);
                cmd.Parameters.AddWithValue("@pass", txtpass.Text);
                cmd.Parameters.AddWithValue("@add", txtadd.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@que", que);
                cmd.Parameters.AddWithValue("@ans", txtque.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Registred Successfully...!!!');window,location='Ulogin.aspx';", true);
            }
            catch (Exception ae)
            {
                Console.WriteLine(ae.Message);
            }
            
        }

       
       
    }
}