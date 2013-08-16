using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using BusCls;

namespace Traveller
{
    public partial class TicketCancellation : System.Web.UI.Page
    {
        string bid;
        int i=1;
        ArrayList seatlist=new ArrayList();
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
        SqlCommand cmd,cmd1;
        SqlDataReader data,data1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            TransactionInfo cancel = new TransactionInfo();
            bid=cancel.GetBusId(DropDownListTid.SelectedItem.Text);
            con.Open();
            cmd=new SqlCommand("select * from TicketDB where TransactionId=@tid",con);
            cmd.Parameters.AddWithValue("@tid",DropDownListTid.SelectedItem.Text);
            data=cmd.ExecuteReader();

            while (data.Read())
            {
                seatlist.Add((data[1].ToString()));

            }
            con.Close();
            
            for(int i=0;i<seatlist.Count;i++){
                con.Open();
                cmd1=new SqlCommand("update SeatDB set seat0=NULL where BusId=@bid and seat0=@seat",con);
                cmd1.Parameters.AddWithValue("@bid",bid);
                cmd1.Parameters.AddWithValue("@seat",Convert.ToInt32(seatlist[i]));
                cmd1.ExecuteNonQuery();
                cmd1 = new SqlCommand("update SeatDB set seat1=NULL where BusId=@bid and seat1=@seat", con);
                cmd1.Parameters.AddWithValue("@bid",bid);
                cmd1.Parameters.AddWithValue("@seat",Convert.ToInt32(seatlist[i]));
                cmd1.ExecuteNonQuery();
                cmd1 = new SqlCommand("update SeatDB set seat2=NULL where BusId=@bid and seat2=@seat", con);
                cmd1.Parameters.AddWithValue("@bid",bid);
                cmd1.Parameters.AddWithValue("@seat",Convert.ToInt32(seatlist[i]));
                cmd1.ExecuteNonQuery();
                cmd1 = new SqlCommand("update SeatDB set seat3=NULL where BusId=@bid and seat3=@seat", con);
                cmd1.Parameters.AddWithValue("@bid",bid);
                cmd1.Parameters.AddWithValue("@seat",Convert.ToInt32(seatlist[i]));
                cmd1.ExecuteNonQuery();
                cmd1 = new SqlCommand("update SeatDB set seat4=NULL where BusId=@bid and seat4=@seat", con);
                cmd1.Parameters.AddWithValue("@bid",bid);
                cmd1.Parameters.AddWithValue("@seat",Convert.ToInt32(seatlist[i]));
                cmd1.ExecuteNonQuery();
                
                }
            con.Close();
            cancel.DeleteTransaction(DropDownListTid.SelectedItem.Text);
            Response.Redirect("UserProfile.aspx");
            }
        }

      
        
    }
