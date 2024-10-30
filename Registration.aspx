<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style4
        {
            width: 202px;
        }
        .style6
        {
            width: 202px;
            text-decoration: underline;
        }
        .style8
        {
            color: #0033CC;
        }
        .style9
        {
            height: 32px;
            width: 202px;
            color: #0033CC;
        }
        .style10
        {
            width: 202px;
            color: #0033CC;
        }
        .style11
        {
            width: 407px;
            text-decoration: underline;
        }
        .style12
        {
            height: 32px;
            width: 407px;
            color: #0033CC;
        }
        .style13
        {
            width: 407px;
            color: #0033CC;
        }
        .style14
        {
            width: 407px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width:100%;">
    <tr>
        <td style="font-weight: 700; text-decoration: blink; text-transform: uppercase; font-style: italic;" 
            bgcolor="White" class="style11">
            &nbsp;</td>
        <td style="font-weight: 700; text-decoration: blink; text-transform: uppercase; font-style: italic;" 
            bgcolor="White" class="style6">
            &nbsp;</td>
        <td class="text-decoration-underline">
            <span class="style8">REGISTRATION</span>&nbsp; <span class="style8">FORM</span>:</td>
    </tr>
    <tr>
        <td class="style12" valign="top">
            &nbsp;</td>
        <td class="style9" valign="top">
            Name</td>
        <td class="style1">
            <asp:TextBox ID="txtname" runat="server" BorderColor="Black" BorderWidth="5px" 
                ForeColor="Black" Height="40px" MaxLength="20" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="This field should not be empty" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" BorderColor="Black" BorderWidth="5px" 
                ForeColor="Black" Height="40px" MaxLength="40" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="This field should not be empty" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style4">
            <span class="style8">Phone</span> <span class="style8">Number</span></td>
        <td>
            <asp:TextBox ID="txtnum" runat="server" BorderColor="Black" BorderWidth="5px" 
                ForeColor="Black" Height="40px" MaxLength="10" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtnum" ErrorMessage="This field should not be empty" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Password</td>
        <td>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" 
                BorderColor="Black" BorderWidth="5px" ForeColor="Black" Height="40px" 
                MaxLength="10" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtpass" ErrorMessage="This field should not be empty" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style4">
            <span class="style8">Confirm</span> <span class="style8">Password</span></td>
        <td>
            <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" 
                BorderColor="Black" BorderWidth="5px" ForeColor="Black" Height="40px" 
                MaxLength="10" Width="283px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtcpass" ControlToValidate="txtpass" 
                ErrorMessage="Both the password should match" ForeColor="#FF3300"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnsubmit" runat="server" Text="Register" 
                onclick="btnsubmit_Click" BackColor="#3399FF" BorderColor="Black" 
                BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="130px" />
        </td>
    </tr>
</table>
</asp:Content>

