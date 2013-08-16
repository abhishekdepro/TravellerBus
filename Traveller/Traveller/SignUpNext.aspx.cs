using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using BusCls;

namespace Traveller
{
    public partial class SignUpNext : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConfirmSignup_Click(object sender, EventArgs e)
        {
            /*DEBUG: Preventing user from entering characters in contact number*/
            char [] test=TxtContact.Text.ToCharArray();   
            for(int i=0;i<test.Length;i++){
                if (Convert.ToInt32(test[i]) >= 48 && Convert.ToInt32(test[i]) <= 57)
                    Labelerror.Visible = false;
                else
                    Labelerror.Visible = true;
                }
            /*DEBUG: Prevent entering less than 10 digit numbers*/
            if (TxtName.Text!="" && TxtContact.Text.Length == 10) {
                UserInfo user = new UserInfo();  /*Use Class Library Reference*/
                user.AddUser(Session["user"].ToString(), Session["pass"].ToString(), TxtName.Text, Session["email"].ToString(), TxtContact.Text);
            }
            else if (TxtContact.Text.Length < 10) {
                Label10digit.Visible = true;
            }
            Response.Redirect("SignIn.aspx");
        }
    }
}