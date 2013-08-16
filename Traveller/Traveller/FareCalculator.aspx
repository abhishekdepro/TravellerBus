<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FareCalculator.aspx.cs" Inherits="Traveller.FareCalculator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Traveller</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 82%;
            z-index: 1;
            left: 53px;
            top: 253px;
            position: absolute;
            height: 229px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 397px;
        }
        .style3
        {
            border-style: solid;
            border-color: #FF0000;
        }
    </style>
</head>
<body style="height: 468px">
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
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 32px; left: 312px; position: absolute; height: 25px" 
                      Text="From" Width="84px"></asp:Label>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td>
                  <asp:DropDownList ID="DropDownDest" runat="server" 
                      DataSourceID="SqlDataSource2" DataTextField="Destination" 
                      DataValueField="Destination" 
                      
                      style="z-index: 1; left: 412px; top: 99px; position: absolute; width: 215px; font-size: medium; font-family: 'Segoe UI Semilight'" 
                      CssClass="style3">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [Destination] FROM [BusDB]"></asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
      </table>
        <asp:Button ID="BtnFare" runat="server" BorderStyle="None" 
          onclick="BtnFare_Click" 
          style="color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; z-index: 1; left: 518px; top: 418px; position: absolute; background-color: #FF0000; height: 40px;" 
          Text="FareCalculator" Width="121px" />
      <asp:Label ID="Label1" runat="server" BorderStyle="None" 
          style="font-size: large; font-family: 'Segoe UI Semilight'; top: 354px; left: 361px; position: absolute; height: 25px" 
          Text="To" Width="84px"></asp:Label>
      <asp:DropDownList ID="DrpDwnSource" runat="server" 
          DataSourceID="SqlDataSource1" DataTextField="Source" DataValueField="Source" 
          
          style="z-index: 1; left: 466px; top: 278px; position: absolute; width: 215px; font-size: medium; font-family: 'Segoe UI Semilight'" 
          CssClass="style3">
      </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
          SelectCommand="SELECT DISTINCT [Source] FROM [BusDB]"></asp:SqlDataSource>
      <asp:TextBox ID="TxtFare" runat="server" BorderColor="Red" BorderStyle="Solid" 
          ReadOnly="True" 
          
          style="z-index: 1; left: 468px; top: 492px; position: absolute; width: 215px; height: 30px"></asp:TextBox>
      <asp:Label ID="Label3" runat="server" 
          style="z-index: 1; left: 326px; top: 492px; position: absolute; width: 94px; font-family: 'Segoe UI Semilight'" 
          Text="Your Fare is"></asp:Label>
        </div>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
