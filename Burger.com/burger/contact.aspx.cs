using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;


namespace burger
{
    public partial class slider : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "0")
                {
                    main_class obj = new main_class();

                    SqlConnection connection = new SqlConnection(obj.connection_string);
                    lnk_members.Visible = false;
                    lnk_user.Text = Session.Contents["name"].ToString();
                    lnk_logout.Visible = true;
                }
            }
            catch (Exception)
            {
            }           

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?by=f&search=" + txt_search.Text);


        }

        protected void Btn_Send_Click(object sender, EventArgs e)
        {

            string name = Txt_name.Text;
            string to_mail = Txt_Email.Text;
            string comment = Txt_Comments.Text;


            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            // SqlConnection cmd = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=Burger;Integrated Security=True");
            //  SqlCommand cmd=new SqlCommand("Select Email form users where user_id =
            //from ,to ,subject ,body
            smtp.Credentials = new NetworkCredential(" www.burger.com.pk@gmail.com", "xcube123");
            MailMessage mail = new MailMessage(" www.burger.com.pk@gmail.com", "www.burger.com.pk@gmail.com", name, "From " + to_mail + "  Message " + comment);
            smtp.Send(mail);

        }
    }
}