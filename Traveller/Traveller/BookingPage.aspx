<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingPage.aspx.cs" Inherits="Traveller.BookingPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Booking</title>
    
    <style type="text/css">
        #wrapper {
	border-left: thin solid #333;
    border-right: thin solid #333;
width: 1001px;
	background-color: #FFF;
	margin-right: auto;
	margin-left: auto;
	}
#wrapper #logo {
	background-color: #FFF;
	height: 150px;
}
#wrapper #menustrip {
	background-color: #000;
	height: 40px;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-color: #333;
	border-right-color: #333;
	border-bottom-color: #333;
	border-left-color: #333;
}
h1 {
	font-family: "MS Serif", "New York", serif;
	font-size: 20px;
	color: #CCC;
	position: absolute;
	width: 470px;
}
/* CSS Document */

#wrapper #logo #signin {
	background-color: #FFF;
	height: 150px;
	width: 500px;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-color: #F00;
	border-right-color: #F00;
	border-bottom-color: #F00;
	border-left-color: #F00;
}
#wrapper #logo #image_logo {
	width: 500px;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-color: #F00;
	border-right-color: #F00;
	border-bottom-color: #F00;
	border-left-color: #F00;
}
#wrapper #logo #signin {
	width: 500px;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-color: #F00;
	border-right-color: #F00;
	border-bottom-color: #F00;
	border-left-color: #F00;
}
._button {
	background-color: #999;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-color: #333;
	border-right-color: #333;
	border-bottom-color: #333;
	border-left-color: #333;
	margin: 2px;
	padding: 5px;
	height: 30px;
	width: 50px;
}
#wrapper #BodyTheme {
	height: 600px;
            border-top-style: solid;
            border-top-color: #FF0000;
            border-bottom-style: solid;
            border-bottom-color: #FF0000;
        }
#wrapper #Footer {
	background-color: #000;
	height: 40px;
}
body {
	background-color: #999;
}
        .style1
        {
            width: 100%;
            z-index: 1;
            left: 13px;
            top: 229px;
            position: absolute;
            height: 387px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 490px;
        }
        .style4
        {
            font-family: "Segoe UI Semilight";
            border-style: solid;
            font-size: medium;
        }
        .style5
        {
            width: 490px;
            height: 56px;
        }
        .style6
        {
            height: 56px;
        }
        .style7
        {
            border-color: #FF0000;
            font-family: "Segoe UI Semilight";
            border-style: solid;
            font-size: medium;
        }
    </style>
</head>
<body style="height: 468px">
    <form id="form1" runat="server">
    <div id="wrapper">
    <div id="logo">
  	<div id="image_logo"><a href="Home.aspx"><img src="Images/Logo.jpg" width="1000" height="150" alt="logo" /></a></div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
  </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
    <div id="menustrip">
    	
  </div>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style2">
                  <asp:Label ID="Label1" runat="server" BorderStyle="None" 
                      style="top: 278px; left: 344px; position: absolute; height: 32px; font-size: large; font-family: 'Segoe UI Semilight'; width: 137px" 
                      Text="Destination"></asp:Label>
                  <asp:Button ID="BtnCnfrm" runat="server" BorderStyle="None" Height="40px" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; color: #FFFFFF; top: 496px; left: 555px; position: absolute; background-color: #FF0000; width: 125px;" 
                      Text="Confirm" onclick="BtnCnfrm_Click" />
                  <asp:DropDownList ID="DropDownSource" runat="server" CssClass="style7" 
                      
                      style="z-index: 1; left: 513px; top: 213px; position: absolute; width: 215px; height: 30px; bottom: 147px" 
                      DataSourceID="SqlDataSource1" DataTextField="Source" 
                      DataValueField="Source">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Source] FROM [BusDB]"></asp:SqlDataSource>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="top: 23px; left: 347px; position: absolute; height: 32px; font-size: large; font-family: 'Segoe UI Semilight'; width: 137px" 
                      Text="Date"></asp:Label>
                  <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                      BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                      Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" 
                      style="z-index: 1; left: 515px; top: 16px; position: absolute; height: 140px; width: 215px" 
                      TitleFormat="Month" onselectionchanged="Calendar1_SelectionChanged">
                      <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                          ForeColor="#333333" Height="10pt" />
                      <DayStyle Width="14%" />
                      <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                      <OtherMonthDayStyle ForeColor="#999999" />
                      <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                      <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                          Font-Size="8pt" ForeColor="#333333" Width="1%" />
                      <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                          ForeColor="White" Height="14pt" />
                      <TodayDayStyle BackColor="#CCCC99" />
                  </asp:Calendar>
                  <asp:DropDownList ID="DropDownDestination" runat="server" CssClass="style7" 
                      
                      style="z-index: 1; left: 514px; top: 277px; position: absolute; width: 215px; height: 30px" 
                      DataSourceID="SqlDataSource2" DataTextField="Destination" 
                      DataValueField="Destination">
                  </asp:DropDownList>
                  <asp:Button ID="BtnBooking" runat="server" BorderStyle="None" 
                      ForeColor="White" onclick="BtnHome_Click" 
                      style="z-index: 1; left: 384px; top: -71px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 40px; right: 517px;" 
                      Text="Booking" />
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Destination] FROM [BusDB]">
                  </asp:SqlDataSource>
                  <asp:Button ID="BtnHome" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 235px; top: -71px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 40px; right: 666px;" 
                      Text="Home" onclick="BtnHome_Click" />
                  <asp:Label ID="Label5" runat="server" BorderStyle="None" 
                      style="top: 390px; left: 343px; position: absolute; height: 32px; font-size: large; font-family: 'Segoe UI Semilight'; width: 63px" 
                      Text="Time"></asp:Label>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="top: 215px; left: 345px; position: absolute; height: 27px; font-size: large; font-family: 'Segoe UI Semilight'; width: 137px" 
                      Text="Source"></asp:Label>
                  <asp:Button ID="BtnSIgn" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 948px; top: -70px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 40px; right: -47px;" 
                      Text="Sign In" ForeColor="White" onclick="BtnSIgn_Click" />
              </td>
              <td>
                  <asp:DropDownList ID="DropDownTime" runat="server" CssClass="style4" 
                      
                      style="border-color: #FF0000; z-index: 1; left: 514px; top: 394px; position: absolute; width: 215px; height: 30px" 
                      DataSourceID="SqlDataSource3" DataTextField="Time" DataValueField="Time" 
                      
                      AutoPostBack="True">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT Time FROM BusDB WHERE (Date = @date) AND (Source = @source) AND (Destination = @destination)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="date" 
                              PropertyName="SelectedDate" />
                          <asp:ControlParameter ControlID="DropDownSource" Name="source" 
                              PropertyName="SelectedValue" />
                          <asp:ControlParameter ControlID="DropDownDestination" Name="destination" 
                              PropertyName="SelectedValue" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style5">
                  </td>
              <td class="style6">
                  <asp:Button ID="BtnCnfrm0" runat="server" BorderStyle="None" Height="40px" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; color: #FFFFFF; top: 330px; left: 552px; position: absolute; width: 125px; background-color: #FF0000" 
                      Text="Check Timings" onclick="BtnCnfrm0_Click" />
              </td>
          </tr>
      </table>
        </div></ContentTemplate></asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
