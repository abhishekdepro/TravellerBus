<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfileEdit.aspx.cs" Inherits="Traveller.UserProfileEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    
    <title>Edit Profile</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 72%;
            z-index: 1;
            left: 84px;
            top: 241px;
            position: absolute;
            height: 234px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 323px;
            height: 47px;
        }
        .style3
        {
            width: 323px;
            height: 62px;
        }
        .style4
        {
            height: 62px;
        }
        .style7
        {
            width: 323px;
            height: 55px;
        }
        .style8
        {
            height: 55px;
        }
        .style9
        {
            height: 47px;
        }
        .style10
        {
            width: 323px;
            height: 58px;
        }
        .style11
        {
            height: 58px;
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
              <td class="style3">
                  </td>
              <td class="style4">
                  <asp:TextBox ID="TxtName" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      
                      style="z-index: 1; left: 341px; top: 14px; position: absolute; width: 215px; height: 30px; font-family: 'Segoe UI Semilight'"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 185px; top: 80px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 60px" 
                      Text="Password"></asp:Label>
              </td>
              <td class="style9">
                  <asp:TextBox ID="TxtPass" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      
                      style="z-index: 1; left: 341px; top: 69px; position: absolute; width: 215px; height: 30px; font-family: 'Segoe UI Semilight'" 
                      TextMode="Password"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style7">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 185px; top: 138px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 60px" 
                      Text="Contact"></asp:Label>
              </td>
              <td class="style8">
                  <asp:TextBox ID="TxtContact" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      
                      style="z-index: 1; left: 341px; top: 128px; position: absolute; width: 215px; height: 30px; font-family: 'Segoe UI Semilight'"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style10">
                  &nbsp;</td>
              <td class="style11">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style10">
                  &nbsp;</td>
              <td class="style11">
                  <asp:TextBox ID="TxtEmail" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      
                      style="z-index: 1; left: 341px; top: 186px; position: absolute; width: 215px; height: 30px; font-family: 'Segoe UI Semilight'"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" BorderStyle="None" 
                      style="font-size: medium; color: #FFFFFF; font-family: 'Segoe UI Semilight'; z-index: 1; left: 339px; top: 249px; position: absolute; height: 40px; background-color: #FF0000" 
                      Text="Confirm" Width="100px" onclick="Button1_Click" />
              </td>
          </tr>
      </table>
        <asp:Label ID="Label1" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 269px; top: 268px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 60px" 
          Text="Name"></asp:Label>
      <asp:Label ID="Label4" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 269px; top: 439px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 60px" 
          Text="Email"></asp:Label>
        <asp:Label ID="Label5" runat="server" BorderStyle="None" Height="21px" 
          style="font-size: large; color: #008000; font-family: 'Segoe UI Semilight'; z-index: 1; left: 285px; top: 215px; position: absolute" 
          Text="Edit Your Profile Then Click On Confirm" Width="366px"></asp:Label>
        </div>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>

