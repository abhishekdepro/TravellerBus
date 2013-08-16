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
    public partial class UpdateBusInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void DropDownBusId_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            con.Open();
            cmd = new SqlCommand("SELECT * from BusDB WHERE BusId=@bid", con);
            cmd.Parameters.AddWithValue("@bid", DropDownBusId.SelectedItem.Text);
            data = cmd.ExecuteReader();

            while (data.Read())
            {
                TxtSource.Text = data[1].ToString();
                TxtDestination.Text = data[2].ToString();
                TxtDate.Text = data[3].ToString();
                TxtTime.Text = (data[4]).ToString();
                TxtSeat.Text = (data[5]).ToString();
                TxtFare.Text = (data[6]).ToString();
                TxtType.Text = (data[7]).ToString();


            }
        
        
            
        
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            TransactionInfo t1 = new TransactionInfo();
            
            BusInfo binfo = new BusInfo();
            if (t1.AlreadyBooked(DropDownBusId.SelectedItem.Text) == false)
            {
                binfo.UpdateBus(DropDownBusId.SelectedItem.Text, TxtSource.Text, TxtDestination.Text, Convert.ToDateTime(TxtDate.Text).Date, Convert.ToDateTime(TxtTime.Text), Convert.ToInt32(TxtSeat.Text), Convert.ToInt32(TxtFare.Text), TxtType.Text);
                Response.Redirect("Admin.aspx");
            }
            else {
                TxtSource.Text = "Cannot Update";
                TxtDestination.Text = "";
                TxtDate.Text = "";
                TxtTime.Text = "";
                TxtFare.Text = "";
                TxtSeat.Text = "";
                TxtType.Text = "";
            }
        }
    }
}