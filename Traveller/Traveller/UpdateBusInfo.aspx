<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBusInfo.aspx.cs" Inherits="Traveller.UpdateBusInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Traveller</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 86%;
            z-index: 1;
            left: 179px;
            top: 258px;
            position: absolute;
            height: 280px;
            border-color: #FF0000;
        }
        .style9
        {
            width: 123px;
        }
        .style10
        {
            width: 236px;
        }
        .style11
        {
            width: 176px;
            height: 44px;
        }
        .style12
        {
            width: 123px;
            height: 59px;
        }
        .style13
        {
            width: 236px;
            height: 59px;
        }
        .style14
        {
            width: 176px;
            height: 59px;
        }
        .style15
        {
            height: 59px;
        }
        .style16
        {
            width: 123px;
            height: 71px;
        }
        .style17
        {
            width: 236px;
            height: 71px;
        }
        .style18
        {
            width: 176px;
            height: 71px;
        }
        .style19
        {
            height: 71px;
        }
        .style20
        {
            width: 123px;
            height: 70px;
        }
        .style21
        {
            width: 236px;
            height: 70px;
        }
        .style22
        {
            width: 176px;
            height: 70px;
        }
        .style23
        {
            height: 70px;
        }
        .style24
        {
            width: 123px;
            height: 60px;
        }
        .style25
        {
            width: 236px;
            height: 60px;
        }
        .style26
        {
            width: 176px;
            height: 60px;
        }
        .style27
        {
            height: 60px;
        }
        .style28
        {
            width: 123px;
            height: 74px;
        }
        .style29
        {
            width: 236px;
            height: 74px;
        }
        .style30
        {
            width: 176px;
            height: 74px;
        }
        .style31
        {
            height: 74px;
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
    <div id="menustrip">
    	
    	
  </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style20">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 5px; top: 163px" 
                      Text="Source" Width="95px"></asp:Label>
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 5px; top: 227px" 
                      Text="Destination" Width="95px"></asp:Label>
              </td>
              <td class="style21">
                  <asp:TextBox ID="TxtSource" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" Height="30px" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 139px; top: 156px; position: absolute" 
                      Width="215px"></asp:TextBox>
              </td>
              <td class="style22">
              </td>
              <td class="style23">
              </td>
          </tr>
          <tr>
              <td class="style16">
              </td>
              <td class="style17">
              </td>
              <td class="style18">
              </td>
              <td class="style19">
              </td>
          </tr>
          <tr>
              <td class="style24">
              </td>
              <td class="style25">
              </td>
              <td class="style26">
              </td>
              <td class="style27">
              </td>
          </tr>
          <tr>
              <td class="style28">
              </td>
              <td class="style29">
              </td>
              <td class="style30">
              </td>
              <td class="style31">
              </td>
          </tr>
          <tr>
              <td class="style9">
                  &nbsp;</td>
              <td class="style10">
                  <asp:TextBox ID="TxtDestination" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" Height="30px" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 139px; top: 213px; position: absolute" 
                      Width="215px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style9">
                  &nbsp;</td>
              <td class="style10">
                  <asp:Label ID="Label6" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 490px; top: 16px" 
                      Text="Date" Width="95px"></asp:Label>
                  <asp:Label ID="Label9" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 490px; top: 249px; height: 24px;" 
                      Text="Type" Width="95px"></asp:Label>
                  <asp:TextBox ID="TxtSeat" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 591px; top: 98px; position: absolute" 
                      Width="215px"></asp:TextBox>
                  <asp:TextBox ID="TxtDate" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 591px; top: 13px; position: absolute" 
                      Width="215px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style9">
                  &nbsp;</td>
              <td class="style10">
                  <asp:Label ID="Label7" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 490px; top: 95px; height: 25px;" 
                      Text="Seat" Width="95px"></asp:Label>
                  <asp:Label ID="Label8" runat="server" BorderStyle="None" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 490px; top: 173px" 
                      Text="Fare" Width="95px"></asp:Label>
                  <asp:TextBox ID="TxtFare" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 591px; top: 167px; position: absolute" 
                      Width="215px"></asp:TextBox>
                  <asp:TextBox ID="TxtType" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 591px; top: 237px; position: absolute" 
                      Width="215px"></asp:TextBox>
              </td>
          </tr>
      </table>
        <asp:Button ID="BtnUpdate" runat="server" BorderStyle="None" Height="40px" 
          style="font-family: 'Segoe UI Semilight'; font-size: large; color: #FFFFFF; z-index: 1; left: 462px; top: 551px; position: absolute; background-color: #FF0000" 
          Text="Update" Width="100px" onclick="BtnUpdate_Click" />
      <asp:Label ID="Label1" runat="server" BorderStyle="None" 
          style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 184px; top: 355px" 
          Text="Time" Width="95px"></asp:Label>
      <asp:TextBox ID="TxtTime" runat="server" BorderColor="Red" BorderStyle="Solid" 
          Height="30px" 
          style="font-family: 'Segoe UI Semilight'; font-size: large; z-index: 1; left: 318px; top: 354px; position: absolute" 
          Width="215px"></asp:TextBox>
      <asp:Label ID="Label4" runat="server" BorderStyle="None" 
          style="font-size: x-large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 464px; top: 200px; width: 192px" 
          Text="Update Bus Info"></asp:Label>
      <asp:Label ID="Label5" runat="server" BorderStyle="None" 
          style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; z-index: 1; left: 184px; top: 280px; height: 27px;" 
          Text="BusId" Width="95px"></asp:Label>
      <asp:DropDownList ID="DropDownBusId" runat="server" 
          
          style="z-index: 1; left: 318px; top: 280px; position: absolute; width: 215px; height: 30px; margin-left: 0px" 
          AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BusId" 
          DataValueField="BusId" 
          onselectedindexchanged="DropDownBusId_SelectedIndexChanged">
      </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
          SelectCommand="SELECT DISTINCT [BusId] FROM [BusDB]"></asp:SqlDataSource>
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers areers Us  |   Careers areers rs </h1></div>
</div>
    </form>
</body>
</html>
