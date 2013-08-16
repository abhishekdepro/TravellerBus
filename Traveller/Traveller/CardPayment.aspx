<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardPayment.aspx.cs" Inherits="Traveller.CardPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><link rel="shortcut icon" type="image/x-icon" href="~/Images/Favicon.ico" />
    <title>CardPayment</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 93%;
            z-index: 1;
            left: 80px;
            top: 219px;
            position: absolute;
            height: 307px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 490px;
        }
        .style3
        {
            width: 490px;
            height: 69px;
        }
        .style4
        {
            height: 69px;
        }
        .style5
        {
            font-family: "Segoe UI Semilight";
            font-size: large;
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
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div id="menustrip">
    	
  </div>
  <div id="BodyTheme">
      <table class="style1" style="border-width: thin; border-color: #000000">
          <tr>
              <td class="style2">
                  <asp:TextBox ID="TextBox1" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="z-index: 1; left: 507px; top: 16px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Width="215px"></asp:TextBox>
                  <asp:DropDownList ID="DropDownList1" runat="server" 
                      
                      style="z-index: 1; left: 507px; top: 154px; position: absolute; width: 105px; height: 30px; right: 319px;" 
                      CssClass="style5">
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                      <asp:ListItem>6</asp:ListItem>
                      <asp:ListItem>7</asp:ListItem>
                      <asp:ListItem>8</asp:ListItem>
                      <asp:ListItem>9</asp:ListItem>
                      <asp:ListItem>10</asp:ListItem>
                      <asp:ListItem>11</asp:ListItem>
                      <asp:ListItem>12</asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                  </asp:DropDownList>
                  <asp:Label ID="Label5" runat="server" BorderStyle="None" 
                      style="font-family: 'Segoe UI Semilight'; z-index: 1; left: 540px; top: 131px; position: absolute" 
                      Text="MM"></asp:Label>
                  <asp:Label ID="Label6" runat="server" BorderStyle="None" 
                      style="font-family: 'Segoe UI Semilight'; z-index: 1; left: 667px; top: 132px; position: absolute" 
                      Text="YY"></asp:Label>
                  <asp:Button ID="BtnPay" runat="server" BorderColor="White" BorderStyle="None" 
                      Height="40px" 
                      style="color: #FFFFFF; font-size: large; font-family: 'Segoe UI Semilight'; z-index: 1; left: 500px; top: 258px; position: absolute; background-color: #FF0000" 
                      Text="Pay" Width="90px" onclick="BtnPay_Click" />
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style2">
                  <asp:Label ID="Label2" runat="server" BorderStyle="None" 
                      style="z-index: 1; left: 362px; top: 71px; position: absolute; width: 120px; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Text="Name On Card"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox2" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="z-index: 1; left: 507px; top: 73px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Width="215px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  </td>
              <td class="style4">
                  <asp:TextBox ID="TextBox3" runat="server" BorderColor="Red" BorderStyle="Solid" 
                      Height="30px" 
                      style="z-index: 1; left: 507px; top: 197px; position: absolute; font-size: large; font-family: 'Segoe UI Semilight'" 
                      Width="215px"></asp:TextBox>
                  <asp:DropDownList ID="DropDownList2" runat="server" 
                      
                      style="z-index: 1; left: 625px; top: 154px; position: absolute; width: 105px; height: 30px" 
                      CssClass="style5">
                      <asp:ListItem>13</asp:ListItem>
                      <asp:ListItem>14</asp:ListItem>
                      <asp:ListItem>15</asp:ListItem>
                      <asp:ListItem>16</asp:ListItem>
                      <asp:ListItem>17</asp:ListItem>
                      <asp:ListItem>18</asp:ListItem>
                      <asp:ListItem>19</asp:ListItem>
                      <asp:ListItem>20</asp:ListItem>
                      <asp:ListItem>21</asp:ListItem>
                      <asp:ListItem>22</asp:ListItem>
                      <asp:ListItem>23</asp:ListItem>
                      <asp:ListItem>24</asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
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
        <asp:Label ID="Label1" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 442px; top: 235px; position: absolute; width: 113px; font-size: large; font-family: 'Segoe UI Semilight'" 
          Text="Card No."></asp:Label>
      <asp:Label ID="Label3" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 442px; top: 372px; position: absolute; width: 127px; font-size: large; font-family: 'Segoe UI Semilight'" 
          Text="Card Expires On"></asp:Label>
      <asp:Label ID="Label4" runat="server" BorderStyle="None" 
          style="z-index: 1; left: 442px; top: 415px; position: absolute; width: 113px; font-size: large; font-family: 'Segoe UI Semilight'" 
          Text="CVV No."></asp:Label>
        </div></ContentTemplate>
        </asp:UpdatePanel>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
