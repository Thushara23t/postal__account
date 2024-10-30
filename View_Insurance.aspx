<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="View_Insurance.aspx.cs" Inherits="View_Insurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style2
        {
            color: #0033CC;
            width: 234px;
        }
        .style3
        {
            height: 32px;
            width: 234px;
        }
        .style4
        {
        }
        .style5
        {
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="783px" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        
        <asp:BoundField DataField="policy_no" HeaderText="policy No" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="amount" HeaderText="Amount" 
             ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="date" HeaderText="date" 
             ItemStyle-Width="150px" >     
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="transaction_month" HeaderText="Month" 
             ItemStyle-Width="150px" >     
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("transaction_id") %>' />
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
        </tr>
        <tr>
            <td class="style5">
                Total Amount paid</td>
            <td>
                <asp:Label ID="lblamount" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Maturity Year</td>
            <td>
                <asp:Label ID="lblmaturity" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

