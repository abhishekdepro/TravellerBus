<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentOptions.aspx.cs" Inherits="Traveller.PaymentOptions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Payment Options</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 89%;
            z-index: 1;
            left: 113px;
            top: 276px;
            position: absolute;
            height: 108px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 467px;
            height: 59px;
        }
        .style3
        {
            width: 467px;
            height: 72px;
        }
        .style4
        {
            height: 72px;
        }
        .style5
        {
            height: 59px;
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
              <td class="style3">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="top: -55px; left: 150px; position: absolute; height: 36px; width: 107px; font-size: large; font-family: 'Segoe UI Semibold'; color: #008000; background-color: #FFFFFF;" 
                      Text="Step 3 of 5 :"></asp:Label></td>
              <td class="style4">
                  </td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" Height="35px" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; top: 89px; left: 309px; width: 151px; right: 431px" 
                      Text="Bank Name"></asp:Label>
              </td>
              <td class="style5">
                  <asp:DropDownList ID="ListBankName" runat="server" 
                      
                      style="z-index: 1; top: 92px; position: absolute; width: 215px; height: 30px; left: 479px; font-family: 'Segoe UI Semilight'; font-size: large">
                      <asp:ListItem>CitiBank</asp:ListItem>
                      <asp:ListItem>ICIC Bank</asp:ListItem>
                      <asp:ListItem>HDFC</asp:ListItem>
                      <asp:ListItem>Bank Of Baroda</asp:ListItem>
                      <asp:ListItem>State Bank of India</asp:ListItem>
                      <asp:ListItem>Other</asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td class="style5">
                  &nbsp;</td>
          </tr>
          </table>
        <asp:Label ID="Label1" runat="server" BorderStyle="None" Height="35px" 
          style="font-size: large; font-family: 'Segoe UI Semilight'; position: absolute; top: 309px; left: 424px; width: 151px; right: 530px" 
          Text="Payment Mode"></asp:Label>
      <asp:DropDownList ID="ListPayMode" runat="server" 
          
          style="z-index: 1; top: 311px; position: absolute; width: 215px; height: 30px; left: 591px; font-family: 'Segoe UI Semilight'; font-size: large">
          <asp:ListItem>PayPal</asp:ListItem>
          <asp:ListItem>Internet Banking</asp:ListItem>
          <asp:ListItem>Credit Card/Debit Card</asp:ListItem>
      </asp:DropDownList>
      <asp:Button ID="ButtonNext" runat="server" BorderStyle="None" Height="40px" 
          style="z-index: 1; left: 592px; top: 412px; position: absolute; color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; background-color: #FF0000" 
          Text="Proceed" Width="100px" onclick="ButtonNext_Click"  />
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
