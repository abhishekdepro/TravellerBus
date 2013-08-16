using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusCls;


namespace Traveller
{
    public partial class Admin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnNewBus_Click(object sender, EventArgs e)
        {
            BusInfo b1 = new BusInfo();             /*Class Library Reference used*/
            b1.AddBus(TxtBusId.Text, TxtSource.Text, TxtDestination.Text, Calendar1.SelectedDate, Convert.ToDateTime(TxtTime.Text),Convert.ToInt32(TxtSeat.Text),Convert.ToInt32(TxtFare.Text),DropDownListBusType.SelectedItem.ToString());
            
            TxtBusId.ForeColor = System.Drawing.Color.Red;
            TxtBusId.Text = "New Bus added";
            TxtSource.Text = "";
            TxtDestination.Text = "";
            TxtTime.Text = "";
            TxtSeat.Text = "";
            TxtFare.Text = "";
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void BtnShowBusDB_Click(object sender, EventArgs e)
        {
            Response.Redirect("BusDB.aspx");
        }

        protected void BtnCleanBusDB_Click(object sender, EventArgs e)
        {
            BusInfo bus = new BusInfo();
            bus.AutoCleanBusDB();
        }

        protected void BtnUpdateBus_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateBusInfo.aspx");
        }

       

    
    }
}