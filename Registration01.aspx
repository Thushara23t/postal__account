<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration01.aspx.cs" Inherits="Registration01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style4
        {
            height: 32px;
            color: #0033CC;
            width: 208px;
        }
        .style5
        {
            color: #0033CC;
        }
        .style6
        {
            width: 208px;
        }
        .style8
        {
            color: #0033CC;
            width: 208px;
            height: 47px;
        }
        .style9
        {
            height: 47px;
        }
        .style10
        {
            width: 382px;
        }
        .style11
        {
            height: 32px;
            color: #0033CC;
            width: 382px;
        }
        .style12
        {
            color: #0033CC;
            width: 382px;
            height: 47px;
        }
        .style14
        {
            width: 382px;
            height: 47px;
        }
        .style15
        {
            width: 208px;
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width:100%;">
    <tr>
        <td style="font-weight: 700; text-decoration: underline blink; text-transform: uppercase; font-style: italic;" 
            bgcolor="White" class="style10">
            &nbsp;</td>
        <td style="font-weight: 700; text-transform: uppercase; font-style: italic;" 
            bgcolor="White" class="style6">
            &nbsp;</td>
        <td>
            <span class="style5">REGISTRATION</span> <span class="style5">FORM</span></td>
    </tr>
    <tr>
        <td class="style11" valign="top">
            &nbsp;</td>
        <td class="style4" valign="top">
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
        <td class="style12">
            </td>
        <td class="style8">
            Email</td>
        <td class="style9">
            <asp:TextBox ID="txtemail" runat="server" BorderColor="Black" BorderWidth="5px" 
                ForeColor="Black" Height="40px" MaxLength="40" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="This field should not be empty" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style6">
            <span class="style5">Phone</span> <span class="style5">Number</span></td>
        <td>
            <asp:TextBox ID="txtnum" runat="server" BorderColor="Black" BorderWidth="5px" 
                ForeColor="Black" Height="40px" MaxLength="10" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtnum" ErrorMessage="This field should not be empty" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style6">
            <span class="style5">User</span> <span class="style5">Type</span></td>
        <td>
            <asp:DropDownList ID="ddlusertype" runat="server" >
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style12">
            </td>
        <td class="style8">
            Password</td>
        <td class="style9">
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" 
                BorderColor="Black" BorderWidth="5px" ForeColor="Black" Height="40px" 
                MaxLength="20" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtpass" ErrorMessage="This field should not be empty" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            </td>
        <td class="style15">
            <span class="style5">Confirm</span> <span class="style5">Password</span></td>
        <td class="style9">
            <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" 
                BorderColor="Black" BorderWidth="5px" ForeColor="Black" Height="40px" 
                MaxLength="20" Width="283px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtcpass" ControlToValidate="txtpass" 
                ErrorMessage="Both the password should match" ForeColor="#FF3300"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnsubmit" runat="server" Text="Register" 
                onclick="btnsubmit_Click" BackColor="#3399FF" BorderColor="Black" 
                BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="130px" />
        </td>
    </tr>
</table>
</asp:Content>



