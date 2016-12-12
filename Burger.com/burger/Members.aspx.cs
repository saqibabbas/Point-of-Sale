using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace burger
{
    public partial class Members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
            try
            {
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "0")
                {
                    lnk_members.Visible = false;
                    lnk_user.Text = Session.Contents["name"].ToString();
                    Response.Redirect("user.aspx");
                }
            }
            catch (Exception)
            {                                
            }            
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            bool check;
            main_class obj = new main_class();

            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "log_search ";
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("email", txt_email.Text);
            command.Parameters.AddWithValue("password", txt_password.Text);
            SqlDataReader reader = command.ExecuteReader();
            check=reader.Read();
            if (check)
            {               
                Session.Contents.Add("status", "login");                
                Session.Contents.Add("ID", reader["user_id"].ToString());
                Session.Contents.Add("Admin", reader["admin"].ToString());
                if (Session.Contents["Admin"].ToString()=="1")
                {
                    Response.Redirect("admin.aspx");    
                }
                else
                {
                    Response.Redirect("user.aspx");              
                }
                
            }
            else
            {
                lbl_logfail.Visible = true;
            }
            connection.Close();           
        }

        
    }
}