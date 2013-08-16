using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusCls;

namespace Traveller
{
    public partial class InternetBankingPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonProceed_Click(object sender, EventArgs e)
        {
            TransactionInfo trans = new TransactionInfo();
            TicketInfo tinfo = new TicketInfo();
            string tid=(string)Session["tid"];
            string uid=(string)Session["active_user"];
            string bid=(string)Session["bid"];
            DateTime date=(DateTime)Session["date"];
            DateTime time=System.DateTime.Now;
            string source=(string)Session["source"];
            string destination=(string)Session["destination"];
            int fare=(int)Session["fare"];
            string mode=(string)Session["mode"];
            string bank = (string)Session["bank"];
            trans.AddTransaction(tid,uid,bid,date,time,source,destination,fare,mode,bank);
            tinfo.InsertTicket(tid, (string)Session["seat0"], (string)Session["seat1"], (string)Session["seat2"], (string)Session["seat3"], (string)Session["seat4"]);

            Response.Redirect("EULA.aspx");
        }
    }
}