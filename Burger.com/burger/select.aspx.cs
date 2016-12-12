using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace burger
{
    public partial class select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Session["selected"] = Request.QueryString["select"];
            try
            {

            
            string deal = Request.QueryString["select"];
            string ID = Session["ID"].ToString();
            main_class obj = new main_class();

            SqlConnection connection = new SqlConnection(obj.connection_string);
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "insert into temp_deals ([user_id],deal_id) values ('"+ID+"','"+deal+"')";
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("Deals.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("Deals.aspx");
             
            }
        }
    }
}