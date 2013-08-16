using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Traveller
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
        SqlCommand cmd;
        SqlDataReader read;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LabelUserName.Visible == true)
            {
                BtnConfirmSignup.Visible = false;
            BtnContinue.Visible = true;
        }
        }

        protected void BtnConfirmSignup_Click(object sender, EventArgs e)
        {
            /*DEBUG: Prevent duplicate usernames*/
            try
            {
                Session["user"] = TxtUsrName.Text;
                Session["pass"] = TxtPsswd.Text;
                Session["email"] = TxtEmail.Text;
                con.Open();
                cmd = new SqlCommand("select UserID from UserDB",con);
                read = cmd.ExecuteReader();
                while (read.Read()) {
                    if (read[0].ToString() == TxtUsrName.Text)
                    {
                        throw new Exception("Same Username Exists");
                        
                    }
                    else
                    {
                        Response.Redirect("SignUpNext.aspx");
                    }
                }
            }
            catch (Exception ex) {
                LabelUserName.Visible = true;
                LabelUserName.Text = ex.Message;
                con.Close();
                ViewState["Caption"]=ex.Message;
                
                
            }

            
                
                }

        protected void BtnContinue_Click(object sender, EventArgs e)
        {
            /*DEBUG: Prevent empty fields and length of contact no.=10*/
            if (TxtUsrName.Text != "" && TxtPsswd.Text != "" && TxtEmail.Text != "")
            {
                Session["user"] = TxtUsrName.Text;
                Session["pass"] = TxtPsswd.Text;
                Session["email"] = TxtEmail.Text;
                Response.Redirect("SignUpNext.aspx");
            }
        }
            
            
            
        }
        }

        
    
