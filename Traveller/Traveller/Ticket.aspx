<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="Traveller.FinalPage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Print Ticket</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style1
        {
            width: 61%;
            z-index: 1;
            left: 176px;
            top: 317px;
            position: absolute;
            height: 199px;
            border-color: #FF0000;
        }
        .style3
        {
            width: 287px;
        }
        .style4
        {
            width: 287px;
            height: 48px;
        }
    </style>
</head>
<body style="height: 468px">
    <form id="form1" runat="server">
    <div id="wrapper">
    <div id="logo">
  	<div id="image_logo"><a href="Home.aspx"><img src="Images/Logo.jpg" width="1000" height="150" alt="logo" /></a></div>
     </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div id="menustrip">
    	
  </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style3">
                  <asp:Label ID="labelName" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 274px; top: 17px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Label"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 10px; top: 58px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="TransactionId"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 10px; top: 109px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Seat Number"></asp:Label>
                  <asp:Label ID="Labelseatno" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 274px; top: 108px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Label"></asp:Label>
                  <asp:Label ID="Label5" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 10px; top: 158px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 147px" 
                      Text="Source/Destination"></asp:Label>
                  <asp:Label ID="Labeltid" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 274px; top: 60px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Label"></asp:Label>
                  <asp:Label ID="Label7" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 10px; top: 250px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Fare"></asp:Label>
                  <asp:Label ID="Label11" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 10px; top: 209px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Time"></asp:Label>
                  <asp:Label ID="Label9" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 10px; top: 22px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Name"></asp:Label>
                  <asp:Label ID="LabelFare" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 274px; top: 261px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Label"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:Label ID="LabelSource" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 274px; top: 157px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Label"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:Label ID="LabelDate" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 274px; top: 206px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'; width: 129px" 
                      Text="Label"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style3">
                  </td>
          </tr>
      </table>
      <asp:Button ID="BtnPrint" runat="server" BorderStyle="None" Height="40px" 
          style="z-index: 1; left: 601px; top: 414px; position: absolute; color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; background-color: #FF0000" 
          Text="Print" Width="100px" onclick="BtnPrint_Click" />
</div></ContentTemplate>
        </asp:UpdatePanel>
    </form>
          <div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</body>
</html>

