using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusCls;

namespace Traveller
{
    public partial class SignIn : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnSign.ForeColor = System.Drawing.Color.Red;
            BtnSign.Text = BtnSign.Text.ToUpper();
            if (BtnGuest.Text == "HELLO ADMIN"){
                Response.Redirect("Admin.aspx");
            }
            else if(BtnGuest.Text!= "Hello Guest!"){
                Response.Redirect("UserProfile.aspx");
            }
            
                
        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            
            if (TxtUsrName.Text != "" && TxtPasswd.Text != "")
            {
                        UserInfo user=new UserInfo();   /*Class Library Reference*/
                        if (user.SignIn(TxtUsrName.Text, TxtPasswd.Text) == true)
                        {
                            Session["active_user"] = TxtUsrName.Text;
                            
                            BtnGuest.ForeColor = System.Drawing.Color.Red;
                            BtnGuest.Text = ("Hello " + Session["active_user"].ToString()).ToUpper();
                            BtnSign.Text = "Sign Out";
                            
                            
                        }
                        else {
                            TxtUsrName.ForeColor = System.Drawing.Color.Red;
                            TxtUsrName.Text = "Invalid Credentials";
                        }
                    
                }
            }
        

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Home.aspx");
        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}