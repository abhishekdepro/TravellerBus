using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traveller
{
    public partial class EULA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLast_Click(object sender, EventArgs e)
        {
            if(RadioButton.Items[0].Selected==true)
            Response.Redirect("Ticket.aspx");

        }

        

  
    }
}