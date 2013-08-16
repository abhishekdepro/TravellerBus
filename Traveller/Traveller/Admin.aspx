<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Traveller.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
  <title>Admin Panel</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            z-index: 1;
            left: 14px;
            top: 269px;
            position: absolute;
            height: 625px;
            border-color: #FF0000;
        }
        .style5
        {
            width: 461px;
            height: 79px;
        }
        .style6
        {
            height: 79px;
        }
        .style11
        {
            width: 461px;
            height: 60px;
        }
        .style12
        {
            height: 60px;
        }
        .style13
        {
            width: 461px;
            height: 77px;
        }
        .style14
        {
            height: 77px;
        }
        .style15
        {
            font-family: "Segoe UI Semilight";
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
    <div id="logo">
  	<div id="image_logo"><a href="Home.aspx"><img src="Images/Logo.jpg" width="1000" height="150" alt="logo" /></a></div>
    
  </div>
    <div id="menustrip">
    	
  </div>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style11">
              <asp:Button ID="BtnSign" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 951px; top: -110px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 39px; right: -50px;" 
                      Text="Sign Out" onclick="BtnHome_Click" />
                  <asp:DropDownList ID="DropDownListBusType" runat="server" 
                      DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" 
                      
                      style="border: 2px solid #FF0000; z-index: 1; left: 825px; top: 180px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 133px; height: 30px; ">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Type] FROM [BusDB]"></asp:SqlDataSource>
              </td>
              <td class="style12">
                  <asp:TextBox ID="TxtBusId" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 18px; left: 476px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Fill in a username of your choice" CssClass="style15" 
                      ></asp:TextBox>
                  </td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:Button ID="BtnNewBus" runat="server" 
                      style="z-index: 1; left: 827px; top: 276px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 133px; background-color: #FF0000; height: 40px; color: #FFFFFF;" 
                      Text="Add new Bus" onclick="BtnNewBus_Click" BorderStyle="None" />
                  <asp:Button ID="BtnShowBusDB0" runat="server" 
                      style="z-index: 1; left: 161px; top: 9px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 133px; background-color: #FF0000; height: 40px; color: #FFFFFF;" 
                      Text="Show all Buses"  BorderStyle="None" 
                      ToolTip="Show all buses" onclick="BtnShowBusDB_Click" />
              </td>
              <td class="style12">
                  <asp:Label ID="Label7" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 18px; left: 757px; position: absolute; height: 28px; width: 58px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Time :"></asp:Label>
                  <asp:TextBox ID="TxtTime" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 16px; left: 821px; position: absolute; height: 30px; width: 133px; bottom: 579px;" 
                      ToolTip="Fill in a username of your choice" CssClass="style15" 
                      ></asp:TextBox>
                  
                  </td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:Button ID="BtnUpdateBus" runat="server" 
                      style="z-index: 1; left: 161px; top: 142px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 133px; background-color: #FF0000; height: 40px; color: #FFFFFF;" 
                      Text="Update Bus"  BorderStyle="None" 
                      ToolTip="Update Bus Info" onclick="BtnUpdateBus_Click"   />
              </td>
              <td class="style12">
                  <asp:TextBox ID="TxtFare" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 118px; left: 823px; position: absolute; height: 30px; width: 133px" 
                      ToolTip="Fill in a username of your choice" CssClass="style15" 
                      ></asp:TextBox>
                  
                  <asp:Label ID="Label8" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 119px; left: 761px; position: absolute; height: 28px; width: 56px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Fare :"></asp:Label>
                  <asp:Label ID="Label9" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 179px; left: 759px; position: absolute; height: 28px; width: 55px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Type :"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 18px; left: 401px; position: absolute; height: 35px; width: 62px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="BusId :"></asp:Label>
                  <asp:TextBox ID="TxtSeat" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 69px; left: 822px; position: absolute; height: 30px; width: 133px" 
                      ToolTip="Fill in a username of your choice" CssClass="style15" 
                      ></asp:TextBox>
                  
                  <asp:Label ID="Label6" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 178px; left: 404px; position: absolute; height: 28px; width: 58px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Date :"></asp:Label>
              <asp:Button ID="BtnHome" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 229px; top: -111px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 39px; right: 672px;" 
                      Text="Home" onclick="BtnHome_Click" />
              </td>
              <td class="style12">
                  <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                      BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                      Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" 
                      style="z-index: 1; left: 478px; top: 162px; position: absolute; height: 118px; width: 216px" 
                      TitleFormat="Month">
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
              <td class="style11">
                  <asp:Button ID="BtnCleanBusDB" runat="server" 
                      style="z-index: 1; left: 161px; top: 73px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 133px; background-color: #FF0000; height: 40px; color: #FFFFFF;" 
                      Text="Cleanup Data"  BorderStyle="None" 
                      ToolTip="Auto Clean Up Data" onclick="BtnCleanBusDB_Click"  />
              </td>
              <td class="style12">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 68px; left: 372px; position: absolute; height: 34px; width: 86px; font-size: large; font-family: 'Segoe UI Semilight'; right: 543px;" 
                      Text="Source :"></asp:Label>
                  <asp:TextBox ID="TxtSource" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      style="top: 68px; left: 477px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Enter a strong password." CssClass="style15"></asp:TextBox>
                  <asp:TextBox ID="TxtDestination" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 118px; left: 478px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Re-enter the above password." 
                      CssClass="style15"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 69px; left: 701px; position: absolute; height: 28px; width: 116px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="No. of Seats :"></asp:Label>
              </td>
              <td class="style12">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style13">
                  <asp:Label ID="Label4" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 120px; left: 352px; position: absolute; height: 36px; width: 105px; font-size: large; font-family: 'Segoe UI Semilight'; margin-left: 4px" 
                      Text="Destination :"></asp:Label>
              </td>
              <td class="style14">
                  </td>
          </tr>
          <tr>
              <td class="style5">
                  &nbsp;</td>
              <td class="style6">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style5">
                  &nbsp;</td>
              <td class="style6">
                  &nbsp;</td>
          </tr>
      </table>
        <asp:Label ID="Label5" runat="server" BorderStyle="None" 
          style="top: 218px; left: 625px; position: absolute; font-size: xx-large; font-family: 'Segoe UI Semilight'; height: 55px; width: 192px" 
          Text="Admin Panel"></asp:Label>
        </div>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
