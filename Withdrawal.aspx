<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Withdrawal.aspx.cs" Inherits="Withdrawal" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style2
        {
        }
        .style3
        {
            height: 32px;
            width: 135px;
            color: #0033CC;
        }
        .style4
        {
            color: #0033CC;
        }
        .style5
        {
            width: 135px;
        }
        .style6
        {
            color: #0033CC;
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <span class="style4">Account</span> <span class="style4">No</span></td>
            <td>
                <asp:TextBox ID="txtno" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnsearch" runat="server" CausesValidation="False" 
                    onclick="btnsearch_Click" Text="Search" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="120px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="759px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         
        <asp:BoundField DataField="firstname" HeaderText="Name" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="state" HeaderText="State" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("applicant_id") %>' />
            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
        </asp:TemplateField>
    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>


            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" Format="yyyy-MM-dd"
                    Enabled="True" TargetControlID="txtdate">
                </asp:CalendarExtender>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Amount</td>
            <td>
                <asp:TextBox ID="txtamt" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Balance</td>
            <td class="style1">
                <asp:Label ID="lblbalance" runat="server"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style5">
                <span class="style4">Deposited</span> <span class="style4">By</span></td>
            <td>
                <asp:Label ID="lbldeposit" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnsave" runat="server" 
                    onclick="btnsave_Click" Text="Save" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="120px" />
                &nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" onclick="btnclear_Click" 
                    Text="Reset" BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="120px" />
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

