<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusDB.aspx.cs" Inherits="Traveller.BusDB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
  <title>Bus Data</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
    <div id="logo">
  	<div id="image_logo"><a href="Home.aspx"><img src="Images/Logo.jpg" width="1000" height="150" alt="logo" /></a></div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
  </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div id="menustrip">
    	
  </div>
  <div id="BodyTheme">
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="BusId" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" Height="400px" 
            style="font-size: medium; font-family: 'Segoe UI Semilight'" 
            Width="1003px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="BusId" HeaderText="BusId" ReadOnly="True" 
                    SortExpression="BusId" />
                <asp:BoundField DataField="Source" HeaderText="Source" 
                    SortExpression="Source" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" 
                    SortExpression="Destination" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
                <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Button ID="BtnHome" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 229px; top: -111px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 39px; right: 672px;" 
                      Text="Home" onclick="BtnHome_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:travellerConnectionString %>" 
            SelectCommand="SELECT * FROM [BusDB]"></asp:SqlDataSource>
      
        </div></ContentTemplate></asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers 
                <asp:Button ID="Button1" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 115px; top: -453px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; color: #FFFFFF; font-size: medium; background-color: #333333; height: 39px; right: 255px;" 
                      Text="Home" onclick="BtnHome_Click" /></h1></div>
</div>
    </form>
</body>
</html>
