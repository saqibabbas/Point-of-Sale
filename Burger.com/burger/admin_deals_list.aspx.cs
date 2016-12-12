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
    public partial class admin_deals_list : System.Web.UI.Page
    {
        public string page_edit = "admin_deal.aspx?id=";
        public string page_delete = "admin_delete.aspx?id=";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "1")
                {
                    main_class obj = new main_class();

                    SqlConnection connection = new SqlConnection(obj.connection_string);
                    connection.Open();
                    SqlCommand command = new SqlCommand();
                    command.Connection = connection;
                    command.CommandText = "select * from Deals_des";
                    SqlDataReader reader = command.ExecuteReader();
                    deals_grid.DataSource = reader;
                    deals_grid.DataBind();
                    connection.Close();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Members.aspx");
            }
           
        }

        protected void btn_newdeal_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_deal.aspx?id=new");
        }

        protected void btn_deals_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");

        }
    }
}