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
    public partial class Edit_profile : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {



                main_class obj = new main_class();

                SqlConnection connection = new SqlConnection(obj.connection_string);
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "select * from users where admin=1";
                SqlDataReader read = command.ExecuteReader();
                read.Read();
                txt_Email.Text = read["Email"].ToString();
                
             
                connection.Close();
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            main_class obj = new main_class();

            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "update users set Email='" + txt_Email.Text + "',Password='"+txt_password.Text+"' where admin=1";
            command.ExecuteNonQuery();
            connection.Close();
        }

        

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}