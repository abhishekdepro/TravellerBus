using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traveller
{
    public partial class FinalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string no_of_seats = Session["no_of_seats"].ToString();
            labelName.Text = (string)Session["active_user"];
            Labeltid.Text = (string)Session["tid"];
            LabelSource.Text = (string)Session["source"];
            switch (no_of_seats) { 
                case "1":
                    Labelseatno.Text = (string)Session["seat0"];
                    break;
                case "2":
                    Labelseatno.Text = (string)Session["seat0"]+","+(string)Session["seat1"];
                    break;
                case "3":
                    Labelseatno.Text = (string)Session["seat0"] + "," + (string)Session["seat1"] + "," + (string)Session["seat2"];
                    break;
            }
            LabelDate.Text = Convert.ToString(Convert.ToDateTime(Session["date"]).Date);
            LabelFare.Text = Convert.ToString(Session["fare"]);
        }

        protected void BtnPrint_Click(object sender, EventArgs e)
        {

        }

       
    }
}