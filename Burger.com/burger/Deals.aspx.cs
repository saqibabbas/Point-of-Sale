using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace burger
{
    public partial class de : System.Web.UI.Page
    {
        public string select = "select.aspx?select=";        
        protected void Page_Load(object sender, EventArgs e)
        { 
            try
            {
                price_100.HRef = "Search.aspx?by=t&search=00";
                price_200.HRef = "Search.aspx?by=t&search=200";
                price_300.HRef = "Search.aspx?by=t&search=400";
                price_400.HRef = "Search.aspx?by=t&search=600";
                price_500.HRef = "Search.aspx?by=t&search=800";
                price_600.HRef = "Search.aspx?by=t&search=1000";
                price_700.HRef = "Search.aspx?by=t&search=1200";
                price_800.HRef = "Search.aspx?by=t&search=1400";
                price_900.HRef = "Search.aspx?by=t&search=1600";
                main_class obj = new main_class();

                SqlConnection connection = new SqlConnection(obj.connection_string);
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "select * from Deals_des";
                SqlDataReader reader = command.ExecuteReader();
                Repeater1.DataSource = reader;
                Repeater1.DataBind();
                connection.Close();
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "0")
                {
                    log_message.Visible = false;
                    lnk_cart.Visible = true;
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
        
    }
}