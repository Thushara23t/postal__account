<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #0033CC;
            width: 193px;
        }
    .style2
    {
        height: 32px;
    }
    .style3
    {
        text-decoration: underline;
        width: 462px;
    }
    .style4
    {
        height: 32px;
        width: 462px;
    }
    .style5
    {
        width: 462px;
    }
        .style6
        {
            height: 32px;
            color: #0033CC;
            width: 193px;
        }
        .style7
        {
            height: 32px;
            width: 193px;
        }
        .style8
        {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                </td>
            <td class="style1">
                <strong>LOGIN HERE</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                User ID</td>
            <td class="style2">
                <asp:TextBox ID="txtemail" runat="server" BorderWidth="5px" Height="40px" 
                    Width="283px" BorderColor="Black" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Email Should not be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                Password</td>
            <td class="style2">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" 
                    BorderColor="Black" BorderWidth="5px" Height="40px" Width="283px" 
                    MaxLength="15" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Enter The Valid Password" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Log In" 
                    onclick="btnlogin_Click" Height="44px" Width="118px" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    ForeColor="Red" PostBackUrl="~/Forgotpass.aspx">Forgot Password ?</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

