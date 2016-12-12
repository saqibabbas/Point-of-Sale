using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace burger
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string select = "select.aspx?select=";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "0")
                {
                    lnk_members.Visible = false;
                    lnk_user.Text = Session.Contents["name"].ToString();
                    lnk_logout.Visible = true;
                }
            }
            catch (Exception)
            {                                
            }    
              string search_text = Request.QueryString["search"].ToString();
            string by_text=Request.QueryString["by"].ToString();
            
           // Response.Write(search_text +" query "+by);
            if (search_text != null && by_text == "t")
            {
                string second = (int.Parse(search_text) + 200).ToString();
                main_class obj = new main_class();

                SqlConnection connection = new SqlConnection(obj.connection_string);
                connection.Open();
                SqlCommand cmd = new SqlCommand("select * from deals_des where Price between " + search_text + " and " + second + "   ", connection);
                SqlDataReader reader = cmd.ExecuteReader();
                Repeater1.DataSource = reader;
                Repeater1.DataBind();
                connection.Close();
            }
              if (search_text != null&&by_text=="f")
              {
                  //SqlConnection conn=new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=Burger;Integrated Security=True");
                  //SqlCommand cmd = new SqlCommand("Select * from deals_des where Title like '%" + search_text + "%' or Description like '%" + search_text + "%' or CONVERT(varchar(25), Price) like '%" + search_text + "%' or CONVERT(varchar(25), Id) like '%" + search_text + "%'"); 

                  SqlConnection connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=Burger;Integrated Security=True");
                  connection.Open();
                  SqlCommand command = new SqlCommand("Select * from deals_des where Title like '%" + search_text + "%' or Description like '%" + search_text + "%' or CONVERT(varchar(25), Price) like '%" + search_text + "%' or CONVERT(varchar(25), Id) like '%" + search_text + "%'", connection);
                  //command.Connection = connection;
                  //command.CommandText = "select * from Deals_des";
                  SqlDataReader reader = command.ExecuteReader();
                  Repeater1.DataSource = reader;
                  Repeater1.DataBind();
                  connection.Close();
              }    
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?by=f&search=" + txt_search.Text);
        }
    }
}