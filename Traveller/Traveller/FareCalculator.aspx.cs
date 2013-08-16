using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Traveller
{
    public partial class FareCalculator : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");

        

        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            
        }


        protected void BtnFare_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("SELECT Fare FROM BusDB WHERE Source = @Source AND Destination = @Destination",con);
            SqlDataReader data;
            con.Open();
            com.Parameters.AddWithValue("@Source", DrpDwnSource.SelectedItem.Text);
            com.Parameters.AddWithValue("@Destination", DropDownDest.SelectedItem.Text);
            data = com.ExecuteReader();
            while (data.Read())
            {
                TxtFare.Text = data[0].ToString();
            }
            con.Close();
            

        }
    }
}