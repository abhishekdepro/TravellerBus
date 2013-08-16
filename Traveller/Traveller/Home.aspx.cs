using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Traveller
{
    public partial class Home : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
        SqlCommand cmd;
        SqlDataReader read;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            BtnHome.ForeColor = System.Drawing.Color.Red;
            BtnHome.Text=BtnHome.Text.ToUpper();
            BtnGuest.Text = Convert.ToString(Session["active_user"]).ToUpper();
            LbBusId.Items.Clear();
            LbBusTime.Items.Clear();
            if (BtnGuest.Text != "") {
                BtnSignIn.Text = "Sign out";
            }
            /*Hide Profile Edit for Guest*/
            if (BtnGuest.Text == "GUEST")
            {
                BtnGuest.Visible = false;
            }
            else if (BtnGuest.Text == "")
            {
                BtnGuest.Visible = false;
            }
            
        }

        protected void BtnCheck_Click(object sender, EventArgs e)
        {
            con.Open();
            
            cmd = new SqlCommand("select * from BusDB where Source='"+ListSource.Text+"' and Destination='"+ListDestination.Text+"' and Date= @Date",con);
            cmd.Parameters.AddWithValue("@Date",Convert.ToDateTime(Session["date"]));
            read = cmd.ExecuteReader();
            while (read.Read()) {
                LbBusId.Items.Add(read[0].ToString());
                LbBusTime.Items.Add(read[4].ToString());
                if (LbBusId.Items.Count != 0)
                {
                    LabelID.Visible = true;
                    LbBusId.Visible = true;
                    LbBusTime.Visible = true;
                    BtnBook.Visible = true;
                }
            }
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("SignIn.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Session["date"] = Calendar1.SelectedDate;
        }

        protected void BtnBook_Click(object sender, EventArgs e)
        {
            Session["source"] = Convert.ToString(ListSource.SelectedItem.Text);
            Session["destination"] = Convert.ToString(ListDestination.SelectedItem.Text);
            Session["date"] = Calendar1.SelectedDate;
            Session["time"] = LbBusTime.SelectedItem;
            Session["bid"] = Convert.ToString(ViewState["index"]);
            Response.Redirect("SeatAllotment.aspx");
        }

        protected void BtnBooking_Click(object sender, EventArgs e)
        {
            Session["source"] = ListSource.SelectedItem;
            Session["destination"] = ListDestination.SelectedItem;
            Session["date"] = Calendar1.SelectedDate;
            Response.Redirect("BookingPage.aspx");
        }

        protected void BtnGuest_Click(object sender, EventArgs e)
        {
           if(BtnGuest.Text!="Hello Guest!")
            Response.Redirect("UserProfile.aspx");
            
        }

        protected void LbBusId_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["index"] = LbBusId.SelectedItem;
            
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("TicketCancellation.aspx");
        }

        protected void BtnFare_Click(object sender, EventArgs e)
        {
            Response.Redirect("FareCalculator.aspx");
        }

       

        

        

        

        
    }
}