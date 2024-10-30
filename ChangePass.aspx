<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

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
            height: 32px;
            color: #0033CC;
        }
    .style4
    {
        width: 491px;
    }
    .style5
    {
        height: 32px;
        width: 491px;
    }
    .style6
    {
        height: 32px;
        color: #0033CC;
        width: 491px;
    }
    .style7
    {
        color: #0033CC;
        width: 491px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td dir="ltr" class="style4">
                &nbsp;</td>
            <td dir="ltr">
                &nbsp;</td>
            <td dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td dir="ltr" class="style4">
                &nbsp;</td>
            <td dir="ltr">
                <span class="style2">Current Password*</span><br />
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" 
                    BorderColor="Black" BorderWidth="5px" Height="40px" Width="223px" 
                    MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Enter the current password" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" dir="ltr">
                &nbsp;</td>
            <td class="style1" dir="ltr">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style1" dir="ltr">
                </td>
        </tr>
        <tr>
            <td class="style6" dir="ltr">
                &nbsp;</td>
            <td class="style3" dir="ltr">
                New Password*</td>
            <td class="style1" dir="ltr">
                </td>
        </tr>
        <tr>
            <td dir="ltr" class="style4">
                &nbsp;</td>
            <td dir="ltr">
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" 
                    BorderColor="Black" BorderWidth="5px" Height="40px" Width="223px" 
                    MaxLength="10"></asp:TextBox>
            </td>
            <td dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                Confirm Password*</td>
            <td dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" dir="ltr">
                &nbsp;</td>
            <td class="style1" dir="ltr">
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" 
                    BorderColor="Black" BorderWidth="5px" Height="40px" Width="223px" 
                    MaxLength="10"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpass" ControlToValidate="txtcpass" 
                    ErrorMessage="New Password should be matched" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
            <td class="style1" dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" dir="ltr">
                &nbsp;</td>
            <td class="style1" dir="ltr">
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style1" dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" dir="ltr">
                &nbsp;</td>
            <td class="style1" dir="ltr">
                </td>
            <td class="style1" dir="ltr">
                &nbsp;</td>
        </tr>
        <tr>
            <td dir="ltr" class="style4">
                &nbsp;</td>
            <td dir="ltr">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" 
                    BackColor="#3399FF" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="223px" />
            </td>
            <td dir="ltr">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

