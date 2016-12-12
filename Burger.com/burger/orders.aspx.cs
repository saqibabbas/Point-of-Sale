using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace burger
{
    public partial class orders : System.Web.UI.Page
    {
        public string delete_page = "~/delete.aspx?deal=";
        
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

                lnk_logout.Visible = true;
                lnk_members.Visible = false;
                string ID = Session.Contents["ID"].ToString();
                main_class obj = new main_class();

                SqlConnection connection = new SqlConnection(obj.connection_string);
                connection.Open();
                SqlCommand grid_cmd = new SqlCommand();
                grid_cmd.Connection = connection;
                grid_cmd.CommandText = "SELECT Deals_des.Id,Deals_des.Title, Deals_des.Price FROM Deals_des INNER JOIN temp_deals ON Deals_des.Id=temp_deals.deal_id where temp_deals.[user_id]=" + ID;

                SqlDataReader read;
                read = grid_cmd.ExecuteReader();
                order_grid.DataSource = read;
                order_grid.DataBind();
                connection.Close();
                
            }
            catch (Exception)
            {
                Response.Redirect("Members.aspx");
            }                      
            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?by=f&search=" + txt_search.Text);
        }

        protected void btn_order_Click(object sender, EventArgs e)
        {
            string ID = Session.Contents["ID"].ToString();
            main_class obj = new main_class();
            string date = DateTime.Today.ToShortDateString();
            Response.Write(date);
            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "order";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("user", ID);
            cmd.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("user.aspx");

            connection.Open();
            connection.Close();

        }
    }
}