<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewFixed_report.aspx.cs" Inherits="ViewFixed_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style3
        {
            height: 32px;
            width: 165px;
        }
        .style4
        {
        }
        .style5
        {
            color: #0033CC;
        }
        .style6
        {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                <span class="style5">Account</span> <span class="style5">No</span></td>
            <td>
                <asp:TextBox ID="txtno" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" MaxLength="12" Width="223px"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnview" runat="server" CausesValidation="False" 
                    onclick="btnview_Click" Text="View" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="121px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="*Enter Account Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="845px">
                    <AlternatingRowStyle BackColor="White" />
    <Columns>
         
        
        <asp:BoundField DataField="payment_mode" HeaderText="Payment" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="Cheque_no" HeaderText="Cheque No" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
            <asp:BoundField DataField="bank_name" HeaderText="Bank" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="ifsc" HeaderText="IFSC" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="date" HeaderText="Date" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="amount" HeaderText="Amount" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="deposited_by" HeaderText="Deposited By" 
             ItemStyle-Width="150px" >       
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         
                 
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("fixed_id") %>' />
            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
        </asp:TemplateField>
    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

