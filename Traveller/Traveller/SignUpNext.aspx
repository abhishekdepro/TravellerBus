<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpNext.aspx.cs" Inherits="Traveller.SignUpNext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Sign Up</title>
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
<body style="height: 462px; margin-bottom: 15px;">
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
              <td class="style11">
                  &nbsp;</td>
              <td class="style12">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style11">
                  &nbsp;</td>
              <td class="style12">
                  <asp:Label ID="Label10digit" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 136px; left: 781px; position: absolute; height: 28px; width: 196px; font-size: large; font-family: 'Segoe UI Semilight'; color: #FF0000;" 
                      Text="Enter 10 digit no." Visible="False"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style11">
                  &nbsp;</td>
              <td class="style12">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 64px; left: 381px; position: absolute; height: 35px; width: 84px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Name :"></asp:Label>
                  <asp:TextBox ID="TxtName" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 64px; left: 512px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Enter your name" CssClass="style15"></asp:TextBox>
                  <asp:Button ID="BtnConfirmSignup" runat="server" BorderStyle="None" 
                      style="top: 239px; left: 519px; position: absolute; height: 40px; width: 100px; font-family: 'Segoe UI Semilight'; font-size: large; color: #FFFFFF; background-color: #FF0000" 
                      Text="SUBMIT" ToolTip="Submit Data" 
                      onclick="BtnConfirmSignup_Click" />
                  <asp:Label ID="Labelerror" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 63px; left: 781px; position: absolute; height: 28px; width: 196px; font-size: large; font-family: 'Segoe UI Semilight'; color: #FF0000;" 
                      Text="Numbers only." Visible="False"></asp:Label>
              </td>
              <td class="style12">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style11">
                  &nbsp;</td>
              <td class="style12">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 135px; left: 303px; position: absolute; height: 34px; width: 157px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Contact Number :"></asp:Label>
                  <asp:TextBox ID="TxtContact" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      style="top: 134px; left: 512px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="your 10 digit mobile number" CssClass="style15"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style11">
                  &nbsp;</td>
              <td class="style12">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style13">
                  &nbsp;</td>
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
          style="top: 219px; left: 531px; position: absolute; font-size: xx-large; font-family: 'Segoe UI Semilight'; height: 55px; width: 128px" 
          Text="Sign   Up"></asp:Label>
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
