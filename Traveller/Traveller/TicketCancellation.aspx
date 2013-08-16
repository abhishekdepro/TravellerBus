<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketCancellation.aspx.cs" Inherits="Traveller.TicketCancellation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ticket Cancellation</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 77%;
            z-index: 1;
            left: 158px;
            top: 303px;
            position: absolute;
            height: 194px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 372px;
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
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; position: absolute; top: 328px; left: 313px; width: 202px; z-index: 1" 
                      Text="Transaction Id"></asp:Label>
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="font-family: 'Segoe UI Semilight'; font-size: large; position: absolute; top: 325px; left: 320px; width: 202px; z-index: 1" 
                      Text="Transaction Id"></asp:Label>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
      </table>
        <asp:Button ID="BtnCancel" runat="server" BorderStyle="None" Height="40px" 
          style="font-family: 'Segoe UI Semilight'; font-size: large; position: absolute; z-index: 1; left: 543px; top: 448px; color: #FFFFFF; background-color: #FF0000" 
          Text="Cancel" Width="100px" onclick="BtnCancel_Click" />
      <asp:Label ID="Label1" runat="server" BorderStyle="None" 
          style="font-family: 'Segoe UI Semilight'; font-size: large; position: absolute; top: 325px; left: 320px; width: 202px; z-index: 1" 
          Text="Transaction Id"></asp:Label>
      <asp:DropDownList ID="DropDownListTid" runat="server" 
          DataSourceID="SqlDataSource1" DataTextField="TransactionId" 
          DataValueField="TransactionId" 
          
          style="z-index: 1; left: 558px; top: 327px; position: absolute; width: 215px; height: 30px; font-size: medium; font-family: 'Segoe UI Semilight';">
      </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
          SelectCommand="SELECT [TransactionId] FROM [TransactionDB] WHERE ([UserId] = @UserId)">
          <SelectParameters>
              <asp:SessionParameter Name="UserId" SessionField="active_user" 
                  Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
