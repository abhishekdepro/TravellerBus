<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBus.aspx.cs" Inherits="Traveller.Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Traveller</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 89%;
            z-index: 1;
            left: 124px;
            top: 219px;
            position: absolute;
            height: 220px;
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
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server" 
                      DataSourceID="SqlDataSource1" DataTextField="BusId" DataValueField="BusId" 
                      style="z-index: 1; left: 312px; top: 35px; position: absolute; width: 215px; font-family: 'Segoe UI Semilight'; font-size: large">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT [BusId] FROM [BusDB]"></asp:SqlDataSource>
                  <asp:Button ID="BtnDelete" runat="server" BorderStyle="None" 
                      onclick="BtnDelete_Click" 
                      style="z-index: 1; left: 314px; top: 94px; position: absolute; width: 100px; height: 40px; color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; background-color: #FF0000" 
                      Text="Delete" />
                  <asp:Label ID="Label1" runat="server" BorderStyle="None" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 195px; top: 41px; position: absolute" 
                      Text="BusId" Width="75px"></asp:Label>
              </td>
          </tr>
          <tr>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td>
                  &nbsp;</td>
          </tr>
      </table>
        </div>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
