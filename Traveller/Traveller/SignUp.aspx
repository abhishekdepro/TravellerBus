<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Traveller.SignUp" %>

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
                  &nbsp;</td>
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
                      style="top: 18px; left: 365px; position: absolute; height: 35px; width: 98px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Username :"></asp:Label>
                  <asp:TextBox ID="TxtUsrName" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 18px; left: 543px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Fill in a username of your choice" CssClass="style15" 
                      ></asp:TextBox>
                  <asp:Button ID="BtnConfirmSignup" runat="server" BorderStyle="None" 
                      style="top: 247px; left: 545px; position: absolute; height: 40px; width: 100px; font-family: 'Segoe UI Semilight'; font-size: large; color: #FFFFFF; background-color: #FF0000" 
                      Text="CONFIRM" ToolTip="Do you confirm?" 
                      onclick="BtnConfirmSignup_Click" />
                  <asp:Label ID="LabelUserName" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 19px; left: 792px; position: absolute; height: 28px; width: 196px; font-size: large; font-family: 'Segoe UI Semilight'; color: #FF0000;" 
                      Text="Numbers only." Visible="False"></asp:Label>
              </td>
              <td class="style12">
                  <asp:TextBox ID="TxtEmail" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      style="top: 176px; left: 543px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Enter your e-mail id" CssClass="style15"></asp:TextBox>
                  <asp:Button ID="BtnContinue" runat="server" BorderStyle="None" 
                      style="top: 246px; left: 544px; position: absolute; height: 40px; width: 100px; font-family: 'Segoe UI Semilight'; font-size: large; color: #FFFFFF; background-color: #FF0000" 
                      Text="CONTINUE" ToolTip="Do you confirm?" 
                       Visible="False" onclick="BtnContinue_Click" />
                  </td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                      ControlToCompare="TxtPsswd" ControlToValidate="TxtCnfrmPsswd" 
                      ErrorMessage="Passwords do not match." 
                      
                      style="top: 121px; left: 789px; position: absolute; height: 39px; width: 194px; color: #FF0000; font-size: large; font-family: 'Segoe UI Semilight'"></asp:CompareValidator>
              </td>
              <td class="style12">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 68px; left: 372px; position: absolute; height: 34px; width: 86px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Password :"></asp:Label>
                  <asp:TextBox ID="TxtPsswd" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      style="top: 69px; left: 543px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Enter a strong password." TextMode="Password" CssClass="style15"></asp:TextBox>
                  <asp:TextBox ID="TxtCnfrmPsswd" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      style="top: 122px; left: 543px; position: absolute; height: 30px; width: 215px" 
                      ToolTip="Re-enter the above password." TextMode="Password" 
                      CssClass="style15"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style11">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 178px; left: 404px; position: absolute; height: 28px; width: 58px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Email :"></asp:Label>
              </td>
              <td class="style12">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style13">
                  <asp:Label ID="Label4" runat="server" BorderStyle="None" Font-Size="14px" 
                      style="top: 120px; left: 304px; position: absolute; height: 36px; width: 153px; font-size: large; font-family: 'Segoe UI Semilight'; margin-left: 4px" 
                      Text="Confirm Password :"></asp:Label>
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
          style="top: 219px; left: 531px; position: absolute; font-size: xx-large; font-family: 'Segoe UI Semilight'; height: 55px; width: 128px" 
          Text="Sign   Up"></asp:Label>
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
