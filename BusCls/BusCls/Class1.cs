using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BusCls
{

    public class UserInfo
    {
        public int foo;
        /*Add new user*/
        public void AddUser(string uid, string pass, string name, string email, string contact)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("insert into UserDB(UserId,Password,Name,Email,ContactNo) values('" + uid + "','" + pass + "','" + name + "','" + email + "','" + contact + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        /*Sign In Credentials check*/
        public bool SignIn(string UserName, string Password) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            con.Open();
            cmd = new SqlCommand("select * from UserDB",con);
            data = cmd.ExecuteReader();
            while (data.Read()==true) {
                if (data[0].ToString() == UserName && data[1].ToString() == Password)
                {
                    foo = 1;
                    break;
                }
                else
                    continue;
            }
            if (foo == 1)
                return true;
            else
                return false;
        }
        /*Update User Info*/
        public void UpdateUser(string uid, string pass, string name, string email, string contact) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("update UserDB set Password=@pass,Name=@name,Email=@email,ContactNo=@contact where UserId=@uid", con);
            cmd.Parameters.AddWithValue("@pass",pass);
            cmd.Parameters.AddWithValue("@name",name);
            cmd.Parameters.AddWithValue("@email",email);
            cmd.Parameters.AddWithValue("@contact",contact);
            cmd.Parameters.AddWithValue("@uid", uid);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        /*Delete an user*/
        public void DeleteUser(string uid)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("delete from UserDB where UserId=@uid", con);
            cmd.Parameters.AddWithValue("@uid", uid);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public class BusInfo
    {
        string bid;
        int fare;
               
        /*Admin adds a new Bus*/
        public void AddBus(string bid,string source,string destination,DateTime date,DateTime time,int seat,int fare,string type) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("insert into BusDB(BusId,Source,Destination,Date,Time,Seat,Fare,Type) values('"+bid+"','"+source+"','"+destination+"',@date,@time,@seat,@fare,@type)",con);

            cmd.Parameters.AddWithValue("@date",date.Date);
            cmd.Parameters.AddWithValue("@time", time.TimeOfDay);
            cmd.Parameters.AddWithValue("@seat", seat);
            cmd.Parameters.AddWithValue("@fare", fare);
            cmd.Parameters.AddWithValue("@type",type);
            cmd.ExecuteNonQuery();
            AddSeats(bid);
            con.Close();
        }
        /*Add seats*/
        public void AddSeats(string bid) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("insert into SeatDB(BusId) values(@bid)",con);
            cmd.Parameters.AddWithValue("@bid",bid);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /*Admin updates BusInfo*/
        public void UpdateBus(string bid, string source, string destination, DateTime date, DateTime time, int seat, int fare, string type) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("update BusDB set Source=@source,Destination=@destination,Date=@date,Time=@time,Seat=@seat,Fare=@fare,Type=@type where BusId=@id",con);
            cmd.Parameters.AddWithValue("@source",source);
            cmd.Parameters.AddWithValue("@destination", destination);
            cmd.Parameters.AddWithValue("@date", date.Date);
            cmd.Parameters.AddWithValue("@time", time.TimeOfDay);
            cmd.Parameters.AddWithValue("@seat", seat);
            cmd.Parameters.AddWithValue("@fare", fare);
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@id", bid);
            cmd.ExecuteNonQuery();
            con.Close();
        }
       
        /*Admin deletes a bus*/
        public void DeleteBus(string bid) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("delete from BusDB where BusId=@bid", con);
            cmd.Parameters.AddWithValue("@bid",bid);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /*BusDB Auto Cleanup*/
        public void AutoCleanBusDB()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd, cmd0;
            con.Open();
            cmd0 = new SqlCommand("insert into HistoryDB(BusId,Source,Destination,Date,Time,Seat,Fare,Type) select BusId,Source,Destination,Date,Time,Seat,Fare,Type from BusDB where Date<@date", con);
            /*Maintains Logs before deletion*/
            cmd0.Parameters.AddWithValue("@date", System.DateTime.Today);
            cmd0.ExecuteNonQuery();
            cmd = new SqlCommand("delete from BusDb where Date < @date", con);
            cmd.Parameters.AddWithValue("@date", System.DateTime.Today);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        /*Gets BusId*/
        public string GetBusId(string source, string destination, DateTime date) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            
            con.Open();
            cmd = new SqlCommand("select BusId from BusDB where Source=@source and Destination=@destination and Date=@date", con);
            cmd.Parameters.AddWithValue("@source",source);
            cmd.Parameters.AddWithValue("@destination", destination);
            cmd.Parameters.AddWithValue("@date", date.Date);
    
            data = cmd.ExecuteReader();
            while (data.Read()) {
                bid = data[0].ToString();
            }
            return bid;
        }

        /*Get BusFare*/
        public int GetFare(string bid, int seats) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;

            con.Open();
            cmd = new SqlCommand("select * from BusDB where BusId=@bid",con);
            cmd.Parameters.AddWithValue("@bid",bid);
            data = cmd.ExecuteReader();
            while (data.Read()) {
                fare = Convert.ToInt32(data[6].ToString());
            }
            return (fare*seats);
            
        }
    }
    public class TransactionInfo
    {
        public int foo,seat_no;
        public int tid;
        public string bid;
        /*Check Seat Status*/
        public bool SeatInfo(string input,string bid) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data; 
            con.Open();
            cmd = new SqlCommand("select * from SeatDB where BusId=@bid",con);

            cmd.Parameters.AddWithValue("@bid",bid);
            data = cmd.ExecuteReader();

            while (data.Read()) { 
                for(int i=1;i<=5;i++)
                {
                    if (data[i].ToString() == input)
                    {

                        foo = 1;
                        break;
                    }
                    else {

                        continue;
                    }
                }
            }
            if (foo == 1)
            {
                foo = 0;
                return true;
            }
            else
                return false;

            
        }
        
        /*Auto Allocate Seat*/
        public int AutoSeatAlloc() {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            con.Open();
            cmd = new SqlCommand("select SeatNo from TransactionDB",con);
            data = cmd.ExecuteReader();
            while (data.Read()) {
                seat_no = Convert.ToInt32(data[0]);
            }
            return seat_no;
        }
        
        /*Generate Transaction ID*/
        public string GenerateTID() { 
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            con.Open();
            cmd = new SqlCommand("select max(TransactionId) from TransactionDB",con);
            data = cmd.ExecuteReader();
            while (data.Read()) {
                tid = Convert.ToInt32(data[0].ToString());
            }
            return ((tid + 1).ToString());
        }

        /*Check whether already booked*/
        public bool AlreadyBooked(string bid) {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            con.Open();
            cmd = new SqlCommand("select BusId from TransactionDB",con);
            data = cmd.ExecuteReader();
            while (data.Read()) {
                if (data[0].ToString() == bid)
                {
                    foo = 1;
                    break;
                }
                else
                    continue;
            }
            if (foo == 1)
            {
                foo = 0;
                return true;
            }
            else
                return false;
        }
            
        

        /*Insert in Transaction*/
        public void AddTransaction(string tid, string uid, string bid, DateTime date, DateTime time,string source,string destination, int fare,string paymode, string bank) {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
                SqlCommand cmd;
                con.Open();
                cmd = new SqlCommand("insert into TransactionDB(TransactionId,UserId,BusId,Date,Time,Source,Destination,Fare,PaymentMode,Bank) values(@tid,@uid,@bid,@date,@time,@source,@destination,@fare,@paymode,@bank)", con);
                cmd.Parameters.AddWithValue("@tid", tid);
                cmd.Parameters.AddWithValue("@uid", uid);
                cmd.Parameters.AddWithValue("@bid", bid);
                
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@time", time);
                cmd.Parameters.AddWithValue("@source", source);
                cmd.Parameters.AddWithValue("@destination", destination);
                cmd.Parameters.AddWithValue("@fare", fare);
                cmd.Parameters.AddWithValue("@paymode", paymode);
                cmd.Parameters.AddWithValue("@bank", bank);

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException) { }
        }

        /*Delete a Transaction*/
          public void DeleteTransaction(string tid)  {
              SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
              SqlCommand cmd;
              con.Open();
              cmd = new SqlCommand("delete from TransactionDB where TransactionId=@tid", con);
              cmd.Parameters.AddWithValue("@tid", tid);
              cmd.ExecuteNonQuery();
              con.Close();      
         }

        /*Get BusId while cancellation of Ticket*/
        public string GetBusId(string tid) {
           
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            SqlDataReader data;
            con.Open();
            cmd = new SqlCommand("select BusId from TransactionDB where TransactionId=@tid",con);
            cmd.Parameters.AddWithValue("@tid",tid);
            data = cmd.ExecuteReader();
            while (data.Read()) {

                bid = (data[0].ToString());
            }
            return bid;
        }
    }

    public class TicketInfo
    { 
        /*Insert into Ticket DB*/
        public void InsertTicket(string tid, string seat0, string seat1, string seat2, string seat3, string seat4){
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
            SqlCommand cmd;
            
            con.Open();
            cmd = new SqlCommand("insert into TicketDB(TransactionId,seat0,seat1,seat2,seat3,seat4) values(@tid,@seat0,@seat1,@seat2,@seat3,@seat4)", con);
            cmd.Parameters.AddWithValue("@tid",tid);
            cmd.Parameters.AddWithValue("@seat0", seat0);
            cmd.Parameters.AddWithValue("@seat1", seat1);
            cmd.Parameters.AddWithValue("@seat2", seat2);
            cmd.Parameters.AddWithValue("@seat3", seat3);
            cmd.Parameters.AddWithValue("@seat4", seat4);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
