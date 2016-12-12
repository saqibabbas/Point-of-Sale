using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace burger
{
    public partial class admin_deal : System.Web.UI.Page
    {
        string id;
        string img_url = "images/";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                try
                {

                    if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "1")
                    {
                        id = Request.QueryString["id"].ToString();
                        main_class obj = new main_class();
                        SqlConnection connection = new SqlConnection(obj.connection_string);
                        connection.Open();
                        SqlCommand command = new SqlCommand();
                        if (id != "new")
                        {

                            Image1.Visible = true;
                            command.CommandText = "select * from Deals_des where Id =" + id;
                            command.Connection = connection;
                            SqlDataReader reader = command.ExecuteReader();
                            reader.Read();

                            
                            txt_deal.Text = reader["Title"].ToString();
                            txt_description.Text = reader["Description"].ToString();
                            txt_Price.Text = reader["Price"].ToString();
                            string urlpic;
                            urlpic = reader["Image url"].ToString();
                            Image1.ImageUrl = urlpic;
                        }

                    }
                }
                catch (Exception)
                {
                    Response.Redirect("Members.aspx");
                }
            }
        }

        protected void Deals_description_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_deals_list.aspx");

        }

        protected void btn_deals_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            main_class obj = new main_class();
            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand command = new SqlCommand();
            id = Request.QueryString["id"].ToString();

            if (id != "new")
            {
                id = Request.QueryString["id"].ToString();

                
                if (FileUpload_image.HasFile)
                {
                    img_url = img_url + "" + FileUpload_image.FileName;

                    FileUpload_image.SaveAs(Server.MapPath(" /") + img_url);

                    command.CommandText = "update Deals_des set Title='" + txt_deal.Text + "' ,[Description]='" + txt_description.Text + "' ,price='" + txt_Price.Text + "',[Image url]='" + img_url + "' where Id=" + id;
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                if (!FileUpload_image.HasFile)                
                {
                    command.CommandText = "update Deals_des set Title='" + txt_deal.Text + "' ,[Description]='" + txt_description.Text + "' ,price='" + txt_Price.Text + "' where Id=" + id;
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                    connection.Close();     
                }
                Response.Redirect("admin_deals_list.aspx");

            }
            else
            {
                if (FileUpload_image.HasFile)
                {
                    string img = img_url;
                    img_url = img_url + "" + FileUpload_image.FileName;
                    FileUpload_image.SaveAs(Server.MapPath(" /") + img_url);

                    command.CommandText = "insert into Deals_des (Title,[Description],Price,[Image url]) values ('" + txt_deal.Text + "','" + txt_description.Text + "','" + txt_Price.Text + "','"+img_url+"')" ;
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                    connection.Close();
                    Response.Redirect("admin_deals_list.aspx");
                }
            }

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_deals_list.aspx");
        }
    }
}