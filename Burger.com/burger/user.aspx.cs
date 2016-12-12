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
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lnk_logout.Visible = true;
                lnk_members.Visible = false;
                string ID = Session.Contents["ID"].ToString();
                main_class obj = new main_class();

                SqlConnection connection = new SqlConnection(obj.connection_string);
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "select Name,[Phone no] from users where user_id='" + ID + "'";
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                lnk_user.Text = reader["Name"].ToString();
                lbl_contact.Text = reader["Phone no"].ToString();
                lbl_name.Text = reader["Name"].ToString();
                Session.Contents.Add("name", lnk_user.Text);
                connection.Close();
                connection.Open();
                SqlCommand new_order_grid = new SqlCommand();
                new_order_grid.Connection = connection;
                new_order_grid.CommandText = "SELECT Deals_des.Id,ordered_deals.[Date],Deals_des.Title, Deals_des.Price FROM Deals_des INNER JOIN ordered_deals ON Deals_des.Id=ordered_deals.deal_id where ordered_deals.[user_id]=" + ID + "and ordered_deals.delivery_status=0";                

                SqlDataReader read_new;
                read_new = new_order_grid.ExecuteReader();
                New_order.DataSource = read_new;
                New_order.DataBind();
                connection.Close();
                connection.Open();
                SqlCommand ordered_grid = new SqlCommand();
                ordered_grid.Connection = connection;
                ordered_grid.CommandText = "SELECT Deals_des.Id,ordered_deals.[Date],Deals_des.Title, Deals_des.Price FROM Deals_des INNER JOIN ordered_deals ON Deals_des.Id=ordered_deals.deal_id where ordered_deals.[user_id]=" + ID + "and ordered_deals.delivery_status=1";                

                SqlDataReader read_ordered;
                read_ordered = ordered_grid.ExecuteReader();
                Delivered_order.DataSource = read_ordered;
                Delivered_order.DataBind();
                connection.Close();
            }
            catch (Exception ex)
            {
                Response.Redirect("Members.aspx");
            }
        }
        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?by=f&search=" + txt_search.Text);
        }

        protected void btn_new_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deals.aspx");
        }
    }
}