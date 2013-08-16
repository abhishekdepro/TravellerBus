using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusCls;

namespace Traveller
{
    public partial class BookingPage : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            
            BtnBooking.Text = BtnBooking.Text.ToUpper();
            BtnBooking.ForeColor = System.Drawing.Color.Red;
        }

        protected void BtnCnfrm0_Click(object sender, EventArgs e)
        {
            
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void BtnCnfrm_Click(object sender, EventArgs e)
        {
           
            
                Session["source"] = Convert.ToString(DropDownSource.SelectedItem.Text);
                Session["destination"] = Convert.ToString(DropDownDestination.SelectedItem.Text);
                Session["time"] = Convert.ToDateTime(DropDownTime.SelectedItem.Text);

                BusInfo bus = new BusInfo();
                string source = Session["source"].ToString();
                string destination = Session["destination"].ToString();
                DateTime date = Convert.ToDateTime(Session["date"]);
                Session["bid"] = Convert.ToString(bus.GetBusId(source, destination, date));
                Response.Redirect("SeatAllotment.aspx");
            }
                
        

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Session["date"] = Convert.ToDateTime(Calendar1.SelectedDate.Date);
        }

        protected void BtnSIgn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        
    }
}