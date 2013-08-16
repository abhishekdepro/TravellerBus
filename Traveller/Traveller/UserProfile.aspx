<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Traveller.UserProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Traveller</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 88%;
            z-index: 1;
            left: 85px;
            top: 272px;
            position: absolute;
            height: 311px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 348px;
        }
        .style3
        {
            width: 333px;
        }
        .style4
        {
            background-color: #FF0000;
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
              <td class="style2">
                  <asp:Button ID="BtnUser" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 463px; top: -113px; position: absolute; width: 214px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 39px; right: 204px;" 
                      Text="Hello User" ForeColor="White" onclick="BtnUser_Click" />
                  <asp:GridView ID="GridView1" runat="server" 
                      
                      style="z-index: 2; left: 195px; top: 13px; position: absolute; height: 287px; width: 686px" 
                      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                      DataKeyNames="TransactionId" DataSourceID="SqlDataSource1" ForeColor="Black" 
                      GridLines="Vertical">
                      <AlternatingRowStyle BackColor="#CCCCCC" />
                      <Columns>
                          <asp:BoundField DataField="TransactionId" HeaderText="TransactionId" 
                              ReadOnly="True" SortExpression="TransactionId" />
                          <asp:BoundField DataField="BusId" HeaderText="BusId" SortExpression="BusId" />
                          <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                          <asp:BoundField DataField="Source" HeaderText="Source" 
                              SortExpression="Source" />
                          <asp:BoundField DataField="Destination" HeaderText="Destination" 
                              SortExpression="Destination" />
                          <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" 
                              SortExpression="PaymentMode" />
                          <asp:BoundField DataField="Bank" HeaderText="Bank" SortExpression="Bank" />
                          <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
                      </Columns>
                      <FooterStyle BackColor="#CCCCCC" />
                      <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                      <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="Gray" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#383838" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
                      SelectCommand="SELECT [TransactionId], [BusId], [Date], [Source], [Destination], [PaymentMode], [Bank], [Fare] FROM [TransactionDB] WHERE ([UserId] = @UserId2) ORDER BY [Date], [Source], [Destination]">
                      <SelectParameters>
                          <asp:SessionParameter Name="UserId2" SessionField="active_user" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </td>
              <td class="style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td class="style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td class="style3">
                  &nbsp;</td>
          </tr>
      </table>
        <asp:Button ID="TxtEditProfile" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 417px; top: 223px; position: absolute; width: 100px; height: 40px; color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; " 
          Text="Edit Profile" CssClass="style4" onclick="TxtEditProfile_Click" />
      <asp:Button ID="TxtBook" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 619px; top: 222px; position: absolute; width: 100px; height: 40px; color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; " 
          Text="Book" CssClass="style4" onclick="TxtBook_Click" />
        </div>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
