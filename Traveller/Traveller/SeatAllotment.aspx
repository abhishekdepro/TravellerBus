<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeatAllotment.aspx.cs" Inherits="Traveller.SeatAllotment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>Seat Allotment</title>
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
                  <asp:RangeValidator ID="RangeValidator1" runat="server" 
                      ControlToValidate="TxtNumber" ErrorMessage="Maximum upto 5 Tickets" 
                      MaximumValue="5" MinimumValue="0" 
                      style="z-index: 1; left: 547px; top: -11px; position: absolute; color: #FF0000; font-family: 'Segoe UI Semilight'; font-size: medium; width: 223px"></asp:RangeValidator>
              </td>
              <td class="style9">
                  <asp:TextBox ID="TxtNumber" runat="server" BorderColor="Red" 
                      BorderStyle="Solid" 
                      
                      style="top: -16px; left: 508px; position: absolute; height: 30px; width: 215px; bottom: 311px" 
                      CssClass="style12"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style7">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="top: 85px; left: 324px; position: absolute; height: 36px; width: 166px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Available Seats :"></asp:Label>
                  <asp:Label ID="Label3" runat="server" BorderStyle="None" 
                      style="top: -59px; left: 223px; position: absolute; height: 36px; width: 107px; font-size: large; font-family: 'Segoe UI Semibold'; color: #008000; background-color: #FFFFFF;" 
                      Text="Step 2 of 5 :"></asp:Label>
                  <asp:Label ID="Label4" runat="server" BorderStyle="None" 
                      style="top: -17px; left: 308px; position: absolute; height: 36px; width: 182px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Number of Seats :"></asp:Label>
                  <asp:Label ID="Label5" runat="server" BorderStyle="None" 
                      style="top: 168px; left: 344px; position: absolute; height: 36px; width: 148px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Your Choice :"></asp:Label>
              </td>
              <td class="style8">
                  </td>
          </tr>
          <tr>
              <td class="style5">
                      <asp:Button ID="BtnGuest" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 606px; top: -129px; position: absolute; width: 214px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 39px; right: 181px;" 
                      Text="Hello Guest!"  ForeColor="White" />
                      <asp:DropDownList ID="DropDownListSeatNo" runat="server" 
                          
                          
                          
                          style="z-index: 1; left: 511px; top: 90px; position: absolute; font-size: medium; font-family: 'Segoe UI Semilight'; width: 215px; height: 21px; border-style: solid; border-color: #FF0000" 
                          onselectedindexchanged="DropDownListSeatNo_SelectedIndexChanged">
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                      </asp:DropDownList>
                  <asp:Button ID="BtnAllocateAuto" runat="server" BorderStyle="None" 
                      
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 33px; left: 509px; position: absolute; height: 40px; width: 215px; color: #FFFFFF; background-color: #FF0000" 
                      Text="Automatic Allocation" ToolTip="New User" 
                          onclick="BtnAllocateAuto_Click"  />
                      <asp:ListBox ID="ListSeats" runat="server" 
                          
                          
                          style="z-index: 1; left: 509px; top: 165px; position: absolute; width: 215px; height: 66px; border-style: solid; border-color: #FF0000" 
                          SelectionMode="Multiple" 
                          >
                      </asp:ListBox>
                      <asp:Image ID="Image1" runat="server" ImageUrl="~\Images\Capture.png" 
                          style="z-index: 1; left: 754px; top: -16px; position: absolute; height: 299px; width: 213px; border-style: dashed; border-color: #FF0000" />
                  <asp:Button ID="BtnProceed" runat="server" BorderStyle="None" 
                      
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 255px; left: 564px; position: absolute; height: 40px; width: 100px; color: #FFFFFF; background-color: #FF0000" 
                      Text="Proceed" ToolTip="New User" onclick="BtnProceed_Click"   />
                  </td>
              <td class="style6">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style10">
                  <asp:Button ID="BtnRemove" runat="server" BorderStyle="None" 
                      onclick="BtnRemove_Click" 
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 123px; left: 624px; position: absolute; height: 40px; width: 100px; color: #FFFFFF; background-color: #FF0000" 
                      Text="Remove" ToolTip="New User" />
                  </td>
              <td class="style11">
                  <asp:Button ID="BtnAdd" runat="server" BorderStyle="None" 
                      
                      style="font-size: large; font-family: 'Segoe UI Semilight'; top: 124px; left: 513px; position: absolute; height: 40px; width: 100px; color: #FFFFFF; background-color: #FF0000" 
                      Text="Add" ToolTip="New User" onclick="BtnAdd_Click"  />
                      <asp:Button ID="BtnSign" runat="server" BorderStyle="None" 
                      
                      style="z-index: 1; left: 950px; top: -129px; position: absolute; width: 100px; font-family: 'Segoe UI Semilight'; font-size: medium; background-color: #333333; height: 38px; right: -49px;" 
                      Text="Sign In" ForeColor="White" />
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
