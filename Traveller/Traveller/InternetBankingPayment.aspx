<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InternetBankingPayment.aspx.cs" Inherits="Traveller.InternetBankingPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Internet Payment</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            z-index: 1;
            left: 20px;
            top: 319px;
            position: absolute;
            height: 240px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 490px;
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
                      style="z-index: 1; left: 314px; top: 19px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 177px; margin-left: 1px" 
                      Text="Account Number"></asp:Label>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 314px; top: 76px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 176px" 
                      Text="HomeBranch"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox2" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="z-index: 1; left: 503px; top: 71px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Width="215px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 314px; top: 136px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 176px" 
                      Text="IFSC Code"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox3" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="z-index: 1; left: 503px; top: 133px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Width="215px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
      </table>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Red" 
          BorderStyle="Solid" Height="30px" 
          style="z-index: 1; left: 523px; top: 336px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'" 
          Width="215px"></asp:TextBox>
      <asp:Button ID="ButtonPay" runat="server" BorderStyle="None" Height="40px" 
          style="color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; z-index: 1; left: 522px; top: 511px; position: absolute; background-color: #FF0000" 
          Text="Pay" Width="100px" onclick="ButtonProceed_Click" />
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
