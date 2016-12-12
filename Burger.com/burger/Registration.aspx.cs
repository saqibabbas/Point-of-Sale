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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?by=f&search=" + txt_search.Text);
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            main_class obj = new main_class();

            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "insertion";
            command.CommandType = CommandType.StoredProcedure;
            
            command.Parameters.AddWithValue("Name",txt_name.Text);
            command.Parameters.AddWithValue("Email",txt_Email.Text);
            command.Parameters.AddWithValue("Phone",txt_phone.Text);
            command.Parameters.AddWithValue("Country",txt_country.Text);
            command.Parameters.AddWithValue("City",txt_city.Text);
            command.Parameters.AddWithValue("Address",txt_address.Text);
            command.Parameters.AddWithValue("Password",txt_repassword.Text);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("Members.aspx");
        }
    }
}