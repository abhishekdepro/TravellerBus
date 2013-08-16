using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traveller
{
    public partial class PaymentOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            if (ListPayMode.SelectedItem.Text == "Internet Banking") {
                Session["mode"] = Convert.ToString(ListPayMode.SelectedItem.Text);
                Session["bank"] = Convert.ToString(ListBankName.SelectedItem.Text);
                Response.Redirect("InternetBankingPayment.aspx");

            }
            else if (ListPayMode.SelectedItem.Text == "Credit Card/Debit Card")
            {
                Session["mode"] = Convert.ToString(ListPayMode.SelectedItem.Text);
                Session["bank"] = Convert.ToString(ListBankName.SelectedItem.Text);
                Response.Redirect("CardPayment.aspx");

            }
        }

 
    }
}