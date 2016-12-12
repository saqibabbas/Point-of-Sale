using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace burger
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session.Contents["status"].ToString() == "login" && Session.Contents["Admin"].ToString() == "0")
                {
                    lnk_members.Visible = false;
                    lnk_user.Text = Session.Contents["name"].ToString();
                    lnk_user.Visible = true;
                    lnk_logout.Visible = true;                    
                }
            }
            catch (Exception)
            {
            }            
        }
        protected void btn_search_Click(object sender, EventArgs e)
        {
           
           
           // Response.Redirect("Search.aspx? search= "+txt_search.Text );
            Response.Redirect("Search.aspx?by=f&search=" + txt_search.Text);
        }                
    }
}