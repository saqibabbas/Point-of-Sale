using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace burger
{
    public partial class admin_delete : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "1")
                {
                    id = Request.QueryString["id"].ToString();
                    main_class obj = new main_class();

                    SqlConnection connection = new SqlConnection(obj.connection_string);
                    connection.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandText = "delete from Deals_des where Id="+id;
                    cmd.ExecuteNonQuery();
                    connection.Close();

                    Response.Redirect("admin_deals_list.aspx");

                }
            } 
         
        }
    }
