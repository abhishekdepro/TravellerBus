<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Traveller.SignIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Sign In</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            z-index: 1;
            left: 17px;
            top: 288px;
            position: absolute;
            height: 281px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 490px;
            height: 58px;
        }
        .style5
        {
            width: 490px;
            height: 82px;
        }
        .style6
        {
            height: 82px;
            color: #FFFFFF;
            font-size: large;
        }
        .style7
        {
            width: 490px;
            height: 64px;
        }
        .style8
        {
            height: 64px;
        }
        .style9
        {
            height: 58px;
        }
        .style10
        {
            width: 490px;
            height: 111px;
        }
        .style11
        {
            height: 111px;
        }
        .style12
        {
            font-family: "Segoe UI Semilight";
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
    <div id="menustrip">
    	
  </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style2">
                  <asp:Label ID="Label1" runat="server" BorderStyle="None" 
                      style="left: 364px; position: absolute; height: 36px; width: 125px; font-size: large; font-family: 'Segoe UI Semilight'; top: 80px" 
                      Text="Password :"></asp:Label>
                      
              </td>
              <td class="style9">
                  <asp:TextBox ID="TxtPasswd" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      
                      style="top: 80px; left: 507px; position: absolute; height: 30px; width: 215px" 
                      CssClass="style12" TextMode="Password"></asp:TextBox>
                  <asp:TextBox ID="TxtUsrName" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      
                      style="top: 21px; left: 507px; position: absolute; height: 30px; width: 215px; bottom: 274px" 
                      CssClass="style12"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style7">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="top: 20px; left: 357px; position: absolute; height: 36px; width: 132px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Username :"></asp:Label>
              </td>
              <td class="style8">
                  </td>
          </tr>
          <tr>
              <td class="style5">
                      <asp:Button ID="BtnGuest" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 606px; top: -129px; position: absolute; width: 214px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 39px; right: 181px;" 
                      Text="Hello Guest!" onclick="BtnHome_Click" ForeColor="White" />
                  </td>
              <td class="style6">
                  <asp:Button ID="BtnSignIn" runat="server" BorderStyle="None" 
                      onclick="BtnSignIn_Click" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 156px; left: 508px; position: absolute; height: 40px; width: 100px; color: #FFFFFF; background-color: #FF0000" 
                      Text="Sign In" ToolTip="Returning user" />
                  </td>
          </tr>
          <tr>
              <td class="style10">
                  </td>
              <td class="style11">
                  <asp:Button ID="BtnSignUp" runat="server" BorderStyle="None" 
                      
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 156px; left: 626px; position: absolute; height: 40px; width: 100px; color: #FFFFFF; background-color: #FF0000" 
                      Text="Sign Up" ToolTip="New User" onclick="BtnSignUp_Click" />
                      <asp:Button ID="BtnSign" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 950px; top: -129px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: -49px;" 
                      Text="Sign In" onclick="BtnHome_Click" ForeColor="White" />
                      <asp:Button ID="BtnHome" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 223px; top: -129px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 38px; right: 678px;" 
                      Text="Home" onclick="BtnHome_Click" />
              </td>
          </tr>
      </table>
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
