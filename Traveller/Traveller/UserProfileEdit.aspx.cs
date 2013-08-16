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
    public partial class UserProfileEdit : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False"); 
        SqlDataReader data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand com = new SqlCommand("SELECT * from UserDb WHERE UserId = @uid", con);
                com.Parameters.AddWithValue("@uid", Session["active_user"].ToString());

                data = com.ExecuteReader();
                while (data.Read())
                {
                    
                    TxtPass.Text = data[1].ToString();
                    TxtName.Text = data[2].ToString();
                    TxtEmail.Text = data[3].ToString();
                    TxtContact.Text = data[4].ToString();
                }

                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            UserInfo ui = new UserInfo();
            if (TxtPass.Text != "")
            {
                ui.UpdateUser((string)Session["active_user"], TxtPass.Text, TxtName.Text, TxtEmail.Text, TxtContact.Text);
            }
            else {
                TxtPass.Text = "ENTER PASSWORD";
            }
        }
    }
    }
