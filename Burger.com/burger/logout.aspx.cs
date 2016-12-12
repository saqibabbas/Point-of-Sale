using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace burger
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            
            Session.Contents["name"] = null;
            Session.Contents["ID"] = null;
            Session.Contents["status"] = "logout";
            Response.Redirect("Members.aspx");
            }
            catch (Exception)
            {

             
            }
        }
    }
}