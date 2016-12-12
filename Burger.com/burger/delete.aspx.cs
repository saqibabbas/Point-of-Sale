using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace burger
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                string ID = Session.Contents["ID"].ToString();
                string deal_id = Request.QueryString["deal"].ToString();
                main_class obj = new main_class();

                SqlConnection connection = new SqlConnection(obj.connection_string);
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandText = "delete from temp_deals where user_id=" + ID + " and deal_id=" + deal_id;
                cmd.ExecuteNonQuery();
                connection.Close();
                Response.Redirect("orders.aspx");
            }
            catch (Exception)
            { 
            }
        }
    }
}