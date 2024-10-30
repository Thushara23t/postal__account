<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Paymentmethod.aspx.cs" Inherits="_Paymentmethod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style2
        {
            color: #0033CC;
        }
    .style3
    {
        width: 477px;
    }
    .style4
    {
        height: 32px;
        width: 477px;
    }
        .style5
        {
            width: 477px;
            height: 42px;
        }
        .style6
        {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/NEW DOCUMENT/VISA.png" Width="189px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="86px" 
                    ImageUrl="~/NEW DOCUMENT/MASTER.png" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="77px" 
                    ImageUrl="~/NEW DOCUMENT/imgbutton3.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="92px" 
                    ImageUrl="~/NEW DOCUMENT/PAYPAL.png" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                CARD NUMBER</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                <asp:TextBox ID="txtcard" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" Width="223px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcard" ErrorMessage="*Enter Your Account Number" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <span class="style2">EXPRIRATION&nbsp;&nbsp; DATE&nbsp;(yyyy-MM-dd)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style2">CVV</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style1">
                <asp:TextBox ID="txtdate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" Width="223px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcvv" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" Width="225px" MaxLength="5" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="*This Feild should not be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                CARD HOLDER NAME</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" Width="223px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*This Feild should not be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnconfirm" runat="server" Text="Confirm Payment" 
                    onclick="btnconfirm_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" />
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

