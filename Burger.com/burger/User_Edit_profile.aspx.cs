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
    public partial class User_Edit_profile : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "0")
                {
                    user = Session.Contents["ID"].ToString();
                    if (!IsPostBack)
                    {



                        main_class obj = new main_class();

                        SqlConnection connection = new SqlConnection(obj.connection_string);
                        connection.Open();
                        SqlCommand command = new SqlCommand();
                        command.Connection = connection;
                        command.CommandText = "select * from users where [user_id]=" + user;
                        SqlDataReader read = command.ExecuteReader();
                        read.Read();
                        txt_name.Text = read["Name"].ToString();
                        txt_city.Text = read["City"].ToString();
                        txt_country.Text = read["Country"].ToString();
                        txt_address.Text = read["Address"].ToString();
                        txt_Email.Text = read["Email"].ToString();
                        txt_phone.Text = read["Phone no"].ToString();
                        connection.Close();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Members.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            main_class obj = new main_class();

            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "user_update";
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("Name", txt_name.Text);
            command.Parameters.AddWithValue("Email", txt_Email.Text);
            command.Parameters.AddWithValue("Phone", txt_phone.Text);
            command.Parameters.AddWithValue("Country", txt_country.Text);
            command.Parameters.AddWithValue("City", txt_city.Text);
            command.Parameters.AddWithValue("Address", txt_address.Text);
            command.Parameters.AddWithValue("Password", txt_repassword.Text);
            command.Parameters.AddWithValue("user", user);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("user.aspx");
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {

        }

    }
}

        
  