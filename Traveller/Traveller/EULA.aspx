<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EULA.aspx.cs" Inherits="Traveller.EULA" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Traveller</title>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 66%;
            z-index: 1;
            left: 183px;
            top: 255px;
            position: absolute;
            height: 323px;
            border-color: #FF0000;
        }
        .style2
        {
            width: 490px;
        }
        .style4
        {
            width: 490px;
            height: 195px;
        }
        .style5
        {
            width: 490px;
            height: 68px;
        }
        .style6
        {
            width: 499px;
            height: 195px;
        }
        .style7
        {
            width: 499px;
            height: 68px;
        }
        .style8
        {
            width: 499px;
        }
    </style>
</head>
<body style="height: 481px">
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
              <td class="style6">
                  </td>
              <td class="style4">
                  <asp:TextBox ID="TextBox1" runat="server" Height="189px" TextMode="MultiLine" 
                      Width="650px"> EULA

Please read this EULA carefully, as it sets out the terms and conditions upon which we license our Software for use.

[By breaking the seal on the packaging of the Software, you agree to be bound by the terms and conditions of this EULA.  [You further agree that [your employees / any person you authorise to use the Software] will also be bound by the terms and conditions of this EULA.]  If you do not agree to this EULA, you must [within [period] / promptly] return the software (in the sealed packaging) to your supplier.  Upon returning the Software and providing proof of purchase, you will be entitled to a refund.]

OR

[By clicking “accept agreement” when you first install the Software, you agree to be bound by the terms and conditions of this EULA.  [You further agree that [your employees / any person you authorise to use the Software] will also be bound by the terms and conditions of this EULA.]  [If you do not agree to this EULA, you must [click “reject agreement” during the installation process and] [within [period] / promptly] return the Software (on the media upon which the Software was provided) to your supplier.  Upon returning the Software and providing proof of purchase, you will be entitled to a refund.]]

OR

[Before you download the Software from our website, we will ask you to give your express agreement to the terms and conditions of this EULA.  [You further agree that [your employees / any person you authorise to use the Software] will also be bound by the terms and conditions of this EULA.]]

If you do not agree to this EULA, you must not use the software for any purpose whatsoever.

1.	Definitions and interpretation

1.1	In this EULA:

“Computer” means [a desktop, notebook, netbook or similar computer owned by and in the control of the Licensee];

[“Documentation” means the documentation concerning the Software supplied by the Licensor or by the Software supplier to the Licensee with the Software;]

“Effective Date” means [the date when the Licensee agrees to the terms and conditions of this EULA, as detailed in the preamble to this EULA];

“EULA” means this end user licence agreement (including the preamble), and any amendments to it from time to time;

“Force Majeure Event” means an event, or a series of related events, that is outside the reasonable control of the party affected (including [failures of or problems with the internet or a part of the internet,] power failures, industrial disputes affecting any third party, changes to the law, disasters, explosions, fires, floods, riots, terrorist attacks and wars);

“Intellectual Property Rights” means all intellectual property rights wherever in the world, whether registered or unregistered, including any application or right of application for such rights (and the “intellectual property rights” referred to above include copyright and related rights, database rights, confidential information, trade secrets, know-how, business names, trade names, trade marks, service marks, passing off rights, unfair competition rights, patents, petty patents, utility models, semi-conductor topography rights and rights in designs);

“Licensee” means the licensee of the Software under this EULA;

“Licensor” means [company name], a [limited company / public limited company] incorporated in [England and Wales] (registration number [number]) having its registered office at [address]];

“Software” means [insert details of the software to be licensed under this EULA] [including following the application of any Upgrade]; and

[“Upgrade” an upgrade, update, enhancement, improvement or patch to the Software supplied by the Licensor.] 

1.2	In this EULA, a reference to a statute or statutory provision includes a reference to:

(a)	that statute or statutory provision as modified, consolidated and/or re-enacted from time to time; and 

(b)	any subordinate legislation made under that statute or statutory provision.

1.3	The Clause headings do not affect the interpretation of this EULA.

1.4	The ejusdem generis rule is not intended to be used in the interpretation of this EULA.

2.	Term of EULA

	[This EULA will come into force on the Effective Date and will continue in force [indefinitely, unless and until terminated in accordance with Clause [9].]

	OR

	[This EULA will come into force on the Effective Date and will continue until [insert date or trigger], upon which it will terminate automatically, unless terminated earlier in accordance with Clause [9].]

3.	Licence

3.1	The Licensee may only use the Software [and Documentation] for the Licensee&#39;s [business / internal business / own private and non-commercial] purposes and in accordance with the provisions of this Clause [3].

3.2	Subject to [the payment by the Licensee of the relevant charges and fees in respect of the Software licence, and] the Licensee&#39;s compliance with Clause [3.4] and the other provisions of this EULA, the Licensor grants to the Licensee a non-exclusive non-transferable licence to:

[(a)	download [1 instance of] the Software [and Documentation];]

(b)	install [1 instance of] the Software [and Documentation];

(c)	use [1 instance of] the Software [in accordance with the Documentation]; and

[(d)	use [1 instance of] the Documentation,]

on [1 Computer] [anywhere in the world / in India].

	...

</asp:TextBox>
                  </td>
          </tr>
          <tr>
              <td class="style7">
                  </td>
              <td class="style5">
                  <asp:RadioButtonList ID="RadioButton" runat="server" 
                      
                      style="font-size: medium; font-family: 'Segoe UI Semilight'; z-index: 1; left: 342px; top: 204px; position: absolute; height: 56px; width: 320px">
                      <asp:ListItem>I agree to the Terms and Conditions</asp:ListItem>
                      <asp:ListItem>I do not agree to the Terms and Conditions</asp:ListItem>
                  </asp:RadioButtonList>
                  </td>
          </tr>
          <tr>
              <td class="style8">
                  &nbsp;</td>
              <td class="style2">
                  &nbsp;</td>
          </tr>
      </table>
        <asp:Label ID="Label1" runat="server" 
          style="z-index: 1; left: 426px; top: 219px; position: absolute; width: 241px; height: 41px; font-family: 'Segoe UI Semilight'; font-size: x-large; color: #FF0000" 
          Text="Terms And Conditions"></asp:Label>
      <asp:Button ID="BtnLast" runat="server" BorderStyle="None" Height="40px" 
          style="font-family: 'Segoe UI Semilight'; font-size: large; color: #FFFFFF; z-index: 1; left: 561px; top: 532px; position: absolute; background-color: #FF0000" 
          Text="Confirm" Width="100px" onclick="BtnLast_Click"    />
        </div>
        	<div id="Footer"> <h1>Copyright Reserved  |  Contact Us  |   Careers </h1></div>
</div>
    </form>
</body>
</html>
