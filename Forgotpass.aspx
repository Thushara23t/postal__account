<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="Forgotpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 221px;
        }
        .style2
        {
            width: 221px;
            text-decoration: underline;
        }
        .style3
        {
            width: 221px;
            color: #0033CC;
        }
        .style4
        {
            width: 391px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                User Name</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="40px" Width="224px" 
                    BorderColor="Black" BorderWidth="5px" MaxLength="15"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*Enter username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnpass" runat="server" onclick="btnpass_Click" 
                    Text="Recover Password" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>

