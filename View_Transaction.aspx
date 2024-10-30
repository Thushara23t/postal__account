<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="View_Transaction.aspx.cs" Inherits="View_Transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #3366CC;
            width: 167px;
        }
        .style2
        {
            color: #3366CC;
            font-weight: 700;
            width: 86%;
        }
        .style3
        {
        }
        .style4
        {
            color: #0033CC;
        }
        .style6
        {
            width: 1%;
        }
        .style9
        {
            width: 167px;
        }
        .style10
        {
            width: 86%;
        }
        .style11
        {
            width: 167px;
            height: 32px;
        }
        .style12
        {
            width: 86%;
            height: 32px;
        }
        .style13
        {
            width: 1%;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <b>
            <td class="style2">
                <span class="text-decoration-underline">VIEW TRANSACTION</b></span></td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:RadioButton ID="rbdeposit" runat="server" Text="DEPOSIT" 
                    AutoPostBack="True" GroupName="search" 
                    oncheckedchanged="rbdeposit_CheckedChanged" style="color: #0033CC" 
                    Checked="True" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
            <b>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="712px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         
        
        <asp:BoundField DataField="payment_mode" HeaderText="Payment Mode" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="amount" HeaderText="Deposited Amount" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("saving_id") %>' />
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
    </b>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:RadioButton ID="rbwithdrawal" runat="server" Text="WITHDRAWAL" 
                    AutoPostBack="True" GroupName="search" 
                    oncheckedchanged="rbwithdrawal_CheckedChanged" style="color: #0033CC" />
            </td>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
            <b>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="710px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         
        
        <asp:BoundField DataField="date" HeaderText="Transaction Date" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="amount" HeaderText="Amount Withdraw" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
            <asp:BoundField DataField="deposited_by" HeaderText="Deposited By" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("withdrawal_id") %>' />
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
    </b>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
    </b>
</asp:Content>

