using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traveller
{
    public partial class BusDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}