<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="PostalInsurance.aspx.cs" Inherits="_PostalInsurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
            width: 292px;
        }
        .style2
        {
            width: 292px;
            height: 32px;
        }
        .style3
        {
            height: 32px;
        }
        .style4
        {
            width: 292px;
            color: #0033CC;
        }
        .style5
        {
            width: 292px;
            color: #0033CC;
            height: 32px;
        }
    .style6
    {
        width: 417px;
    }
    .style7
    {
        width: 417px;
        color: #0033CC;
        height: 32px;
    }
    .style8
    {
        width: 417px;
        color: #0033CC;
    }
    .style9
    {
        width: 417px;
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                Branch Name</td>
            <td class="style3">
                <asp:Label ID="lblbranch" runat="server"></asp:Label>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                Policy No</td>
            <td>
                <asp:Label ID="lblpolicy" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                Deposit</td>
            <td>
                <asp:Label ID="lbldeposit" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                Deposited Date</td>
            <td class="style3">
                <asp:Label ID="lblDepositeddate" runat="server"></asp:Label>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                Maturity</td>
            <td>
                <asp:Label ID="lblMaturity" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                Monthly Premium</td>
            <td>
                <asp:TextBox ID="txtpremium" runat="server" BorderColor="Black" 
                    BorderWidth="5px" ForeColor="Black" Height="40px" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpremium" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                Date</td>
            <td class="style3">
                <asp:Label ID="lbldate" runat="server"></asp:Label>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                Transaction Month</td>
            <td class="style3">
                <asp:DropDownList ID="ddlmonth" runat="server">
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ddlmonth" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style2">
                </td>
            <td class="style3">
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                &nbsp;&nbsp; <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" 
                    Text="Save" BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="118px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnext" runat="server" PostBackUrl="~/Paymentmethod.aspx" 
                    Text="Next" onclick="btnnext_Click" CausesValidation="False" 
                    BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="Black" Width="118px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

