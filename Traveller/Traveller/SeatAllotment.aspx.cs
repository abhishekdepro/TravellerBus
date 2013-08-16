using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BusCls;

namespace Traveller
{
    public partial class SeatAllotment : System.Web.UI.Page
    {
        private static int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            TransactionInfo t1=new TransactionInfo();
            
            for (int i = 1; i <= 40; i++) {
                if (t1.SeatInfo(i.ToString(),(string)Session["bid"]) == true) {
                    DropDownListSeatNo.Items.Remove(Convert.ToString(i));
                }
            }
         
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void DropDownListSeatNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (!ListSeats.Items.Contains(DropDownListSeatNo.SelectedItem))
            {
                if (ListSeats.Items.Count < Convert.ToInt32(TxtNumber.Text))
                {
                    ListSeats.Items.Add(DropDownListSeatNo.SelectedItem);
                }
                else
                {
                    TxtNumber.Text = (Convert.ToInt32(TxtNumber.Text) + 1).ToString();
                    ListSeats.Items.Add(DropDownListSeatNo.SelectedItem);
                }
            }
        }

        protected void BtnProceed_Click(object sender, EventArgs e)
        {
            TransactionInfo tnew = new TransactionInfo();
            BusInfo bus = new BusInfo();
            Session["no_of_seats"] = Convert.ToString(ListSeats.Items.Count);
            Session["tid"] = Convert.ToString(tnew.GenerateTID());
            Session["fare"] = Convert.ToInt32(bus.GetFare((string)Session["bid"], Convert.ToInt32(TxtNumber.Text)));
            for (int i = 0; i < ListSeats.Items.Count; i++) {
                BookSeat(Convert.ToInt32(ListSeats.Items[i].Text),(string)Session["bid"]);
                
            }
            switch (ListSeats.Items.Count) { 
                case 1:
                    Session["seat0"] = (ListSeats.Items[0].Text);
                    Session["seat1"] = "NULL";
                    Session["seat2"] = "NULL";
                    Session["seat3"] = "NULL";
                    Session["seat4"] = "NULL";
                    break;
                case 2:
                    Session["seat0"] = ListSeats.Items[0].Text;
                    Session["seat1"] = ListSeats.Items[1].Text;
                    Session["seat2"] = "NULL";
                    Session["seat3"] = "NULL";
                    Session["seat4"] = "NULL";
                    break;
                case 3:
                    Session["seat0"] = ListSeats.Items[0].Text;
                    Session["seat1"] = ListSeats.Items[1].Text;
                    Session["seat2"] = ListSeats.Items[2].Text;
                    Session["seat3"] = "NULL";
                    Session["seat4"] = "NULL";
                    break;
                case 4:
                    Session["seat0"] = ListSeats.Items[0].Text;
                    Session["seat1"] = ListSeats.Items[1].Text;
                    Session["seat2"] = ListSeats.Items[2].Text;
                    Session["seat3"] = ListSeats.Items[3].Text;
                    Session["seat4"] = "NULL";
                    break;
                case 5:
                    Session["seat0"] = ListSeats.Items[0].Text;
                    Session["seat1"] = ListSeats.Items[1].Text;
                    Session["seat2"] = ListSeats.Items[2].Text;
                    Session["seat3"] = ListSeats.Items[3].Text;
                    Session["seat4"] = ListSeats.Items[4].Text;
                    break;
            }
                Response.Redirect("PaymentOptions.aspx");

        }
        public void BookSeat(int seat_no, string bid)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
                SqlCommand cmd;
                con.Open();
                switch (seat_no)
                {
                    case 1:
                        cmd = new SqlCommand("update SeatDB set seat0=@seat where BusId=@bid", con);
                        cmd.Parameters.AddWithValue("@seat", seat_no);
                        cmd.Parameters.AddWithValue("@bid", bid);
                        
                        cmd.ExecuteNonQuery();
                        break;
                    case 2:
                        cmd = new SqlCommand("update SeatDB set seat1=@seat where BusId=@bid", con);
                        cmd.Parameters.AddWithValue("@seat", seat_no);
                        cmd.Parameters.AddWithValue("@bid", bid);
                        cmd.ExecuteNonQuery();
                        break;
                    case 3:
                        cmd = new SqlCommand("update SeatDB set seat2=@seat where BusId=@bid", con);
                        cmd.Parameters.AddWithValue("@seat", seat_no);
                        cmd.Parameters.AddWithValue("@bid", bid);
                        cmd.ExecuteNonQuery();
                        break;
                    case 4:
                        cmd = new SqlCommand("update SeatDB set seat3=@seat where BusId=@bid", con);
                        cmd.Parameters.AddWithValue("@seat", seat_no);
                        cmd.Parameters.AddWithValue("@bid", bid);
                        cmd.ExecuteNonQuery();
                        break;
                    case 5:
                        cmd = new SqlCommand("update SeatDB set seat5=@seat where BusId=@bid", con);
                        cmd.Parameters.AddWithValue("@seat", seat_no);
                        cmd.Parameters.AddWithValue("@bid", bid);
                        cmd.ExecuteNonQuery();
                        break;
                }
                con.Close();
            }
            catch (Exception ex) {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
               
        }

        protected void BtnAllocateAuto_Click(object sender, EventArgs e)
        {
            TransactionInfo t2 = new TransactionInfo();

            
                for (int i = 1; i <= 5; i++)
                {
                   
                        if (t2.SeatInfo(i.ToString(), (string)Session["bid"]) == false)
                        {
                            if(count<Convert.ToInt32(TxtNumber.Text))
                                ListSeats.Items.Add(i.ToString());
                            count++;
                        }
                        
                    }
                }

        protected void BtnRemove_Click(object sender, EventArgs e)
        {
            ListSeats.Items.Remove(ListSeats.SelectedItem);
        }

       
            
        }

        
    }
