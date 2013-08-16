using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traveller
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnUser.ForeColor = System.Drawing.Color.Red;
            BtnUser.Text = Convert.ToString(Session["active_user"]).ToUpper();
        }

        protected void TxtEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfileEdit.aspx");
        }

        protected void BtnUser_Click(object sender, EventArgs e)
        {

        }

        protected void TxtBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingPage.aspx");
        }
    }
}