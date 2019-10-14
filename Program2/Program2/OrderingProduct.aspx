<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderingProduct.aspx.cs" Inherits="MyAccountSys.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UWP - CS3870 : First Program</title>
    <link rel="stylesheet" type="text/css" href= "StyleSheet1.css" />

    <style type="text/css">

        .auto-style2 {
            height: 23px;
            width: 430px;
        }
        .auto-style3 {
            width: 498px;
        }
        .auto-style4 {
            height: 23px;
            width: 498px;
        }
        .auto-style5 {
            width: 430px;
        }
        .auto-style6 {
            width: 498px;
            height: 32px;
        }
        .auto-style7 {
            width: 430px;
            height: 32px;
        }
    </style>

   


</head>
<body>
    <h1 class="CS3870Title">CS 3870: Program 2 </h1> 


    <form id="form1" runat="server">

        <ul class="navbar">
        <li> <a href="Default.aspx">Start Page </a></li>

        <li> <a href="OrderingProduct.aspx">Order Form </a></li>

        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        </ul>

        <h2 class="contactInfo"> "Web Protocols, Technologies and Applications"</h2>
        <h2 class="Name">Andre Sandoval</h2>

            <table style: align="center" border="1" width="60%" >
           
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblID" runat="server" Font-Bold="True" Font-Italic="True">ID:</asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtID" runat="server" Width="146px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSubTotal" runat="server" ReadOnly="True" Style = "text-align: right" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID cannot be empty" ControlToValidate="txtID" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTax" runat="server" Text="Tax"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPrice" runat="server" Width="144px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtTax" runat="server" ReadOnly="True" Style = "text-align: right" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price cannot be empty!" ControlToValidate="txtPrice" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price has to be greater than 0!" Font-Size="Smaller" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblGrandTotal" runat="server" Text="Grand Total"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtQuantity" runat="server" Width="141px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtGrandTotal" runat="server" ReadOnly="True" Style = "text-align: right" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ControlToValidate="txtQuantity" ErrorMessage="Quantity cannot be empty!" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity has to be greater then 0" Font-Size="Smaller" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="Compute" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
