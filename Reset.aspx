<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reset.aspx.cs" Inherits="_Reset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style2
        {
            width: 574px;
        }
        .style3
        {
            height: 32px;
            width: 574px;
        }
        .style4
        {
            width: 220px;
        }
        .style5
        {
            height: 32px;
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style4">
                RESET PASSWORD</b></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Enter your E-Mail id</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="RESET" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </asp:Content>

