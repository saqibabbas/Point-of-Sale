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
    public partial class admin_all_approved_deals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "1")
                {
                    main_class obj = new main_class();

                    SqlConnection connection = new SqlConnection(obj.connection_string);
                    connection.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "all_approved_deals";
                    SqlDataReader read = cmd.ExecuteReader();
                    all_deals.DataSource = read;
                    all_deals.DataBind();
                    connection.Close();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Members.aspx");

            }

        }

        protected void btn_deals_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");

        }

        protected void Deals_description_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_deals_list.aspx");

        }
    }
}