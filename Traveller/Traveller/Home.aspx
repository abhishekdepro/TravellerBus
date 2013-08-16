<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Traveller.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Traveller</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 99%;
            z-index: 1;
            left: 14px;
            top: 219px;
            position: absolute;
            height: 252px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 414px;
        }
        .style3
        {
            width: 414px;
            height: 85px;
        }
        .style4
        {
            height: 85px;
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
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div id="menustrip">
  </div>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style2">
                  <asp:Button ID="BtnBooking" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 361px; top: -60px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: 530px;" 
                      Text="Booking"  BackColor="#666666" 
                      ForeColor="White" onclick="BtnBooking_Click"  />
              </td>
              <td>
                  <div style="z-index: 1; left: 681px; top: 7px; position: absolute; height: 337px; width: 307px">
                      <asp:ListBox ID="LbBusTime" runat="server" 
                          
                          
                          
                          
                          style="z-index: 1; left: 134px; top: 40px; position: absolute; height: 236px; font-size: medium; font-family: 'Segoe UI Semilight'; width: 153px; border-style: solid; border-color: #FF0000" Visible="False" 
                          >
                      </asp:ListBox>
      <asp:Label ID="LabelID" runat="server" 
          style="font-family: 'Segoe UI Semilight'; z-index: 1; left: 14px; top: 5px; position: absolute; width: 87px; height: 29px; font-size: large; font-weight: 400" 
          Text="Bus ID :" Visible="False"></asp:Label>
                      <asp:ListBox ID="LbBusId" runat="server" 
                          
                          
                          
                          
                          
                          style="z-index: 1; left: 7px; top: 41px; position: absolute; height: 236px; font-size: medium; font-family: 'Segoe UI Semilight'; width: 109px; border-style: solid; border-color: #FF0000" 
                          Visible="False" 
                          >
                      </asp:ListBox>
                  </div>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" 
                      style="font-family: 'Segoe UI Semilight'; z-index: 1; left: 288px; top: 126px; position: absolute; width: 121px; height: 29px; font-size: large; font-weight: 400" 
                      Text="Select Date :"></asp:Label>
                  <asp:Button ID="BtnHome" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 222px; top: -59px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: 669px;" 
                      Text="Home" onclick="BtnHome_Click" BackColor="#666666" 
                      ForeColor="White" />
                  <asp:DropDownList ID="ListSource" runat="server" DataSourceID="SqlDataSource1" 
                      DataTextField="Source" DataValueField="Source" 
                      style="z-index: 1; left: 433px; top: 21px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 213px; border-style: solid; border-color: #FF0000" 
                      ToolTip="Select Source of Journey">
                  </asp:DropDownList>
                  <asp:Button ID="BtnCancel" runat="server" BackColor="#666666" 
                      BorderStyle="None" ForeColor="White"
                      style="z-index: 1; left: 803px; top: -59px; position: absolute; width: 135px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: 53px;" 
                      Text="Ticket Cancellation" onclick="BtnCancel_Click" />
                  <asp:Button ID="BtnFare" runat="server" BorderStyle="None" ForeColor="White" 
                      
                      style="z-index: 1; left: 670px; top: -60px; position: absolute; width: 114px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: 207px;" 
                      Text="Fare calculator" onclick="BtnFare_Click" />
              </td>
              <td>
                  <asp:DropDownList ID="ListDestination" runat="server" 
                      DataSourceID="SqlDataSource2" DataTextField="Destination" 
                      DataValueField="Destination" 
                      style="z-index: 1; left: 432px; top: 71px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 213px; border-style: solid; border-color: #FF0000" 
                      ToolTip="Select Source of Journey">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Destination] FROM [BusDB]" 
                      ></asp:SqlDataSource>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Fare] FROM [BusDB]"></asp:SqlDataSource>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Source] FROM [BusDB]"></asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:Button ID="BtnGuest" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 487px; top: -59px; position: absolute; width: 164px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: 340px;" 
                      Text="Hello Guest!" ForeColor="White" onclick="BtnGuest_Click" /></td>
              <td class="style4">
                  <asp:Label ID="Label5" runat="server" 
                      style="font-family: 'Segoe UI Semilight'; z-index: 1; left: 237px; top: 69px; position: absolute; width: 173px; height: 29px; font-size: large; font-weight: 400" 
                      Text="Select Destination :"></asp:Label>
                  <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                      BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                      Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
                      style="z-index: 1; left: 430px; top: 115px; position: absolute; height: 151px; width: 217px; font-family: 'Segoe UI Semilight'; right: 344px" 
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
              </td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Button ID="BtnCheck" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 432px; top: 305px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #FF0000; height: 40px;" 
                      Text="CHECK" onclick="BtnCheck_Click" />
                  </td>
              <td>
                  <asp:Button ID="BtnSignIn" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 949px; top: -59px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 38px; right: -58px;" 
                      Text="Sign In" onclick="BtnSignIn_Click" />
              </td>
          </tr>
      </table>
      <asp:Label ID="Label1" runat="server" 
          style="font-family: 'Segoe UI Semilight'; z-index: 1; left: 285px; top: 237px; position: absolute; width: 139px; height: 29px; font-size: large; font-weight: 400" 
          Text="Select Source :"></asp:Label>
                  <asp:Button ID="BtnBook" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 809px; top: 523px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #FF0000; height: 40px;" 
                      Text="BOOK" Visible="False" onclick="BtnBook_Click" />
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
