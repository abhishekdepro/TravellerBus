using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusCls;

namespace Traveller
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            BusInfo binf = new BusInfo();
            binf.DeleteBus(DropDownList1.SelectedItem.Text);
        }
    }
}