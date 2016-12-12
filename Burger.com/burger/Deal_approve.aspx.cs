using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace burger
{
    public partial class Deal_approve : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string deal = Request.QueryString["deal"].ToString();
            string user = Request.QueryString["user"].ToString();
            main_class obj = new main_class();



            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "update ordered_deals set delivery_status =1 where [user_id]=" + user + " and deal_id=" + deal;
            cmd.ExecuteNonQuery();
            connection.Close();

            connection.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = connection;
            cmd1.CommandText = "select [Email],Name from users where user_id=" + user;
            SqlDataReader reader = cmd1.ExecuteReader();
            reader.Read();
            string email = reader["Email"].ToString();
            string name = reader["Name"].ToString();
            connection.Close();

            
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("www.burger.com.pk@gmail.com", "xcube123");
            MailMessage mail = new MailMessage(" www.burger.com.pk@gmail.com", email, "Confirmation of Order", "Thank You " + name + " for choosing Burger.Com. We are glad to tell you that you order has been varified successfully and it will be at your door step soon.");
            smtp.Send(mail);

            Response.Redirect("admin.aspx");



          


        }
    }
}