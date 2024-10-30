<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Saving.aspx.cs" Inherits="Saving" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 162px;
        }
        .style3
        {
            width: 162px;
            height: 101px;
        }
        .style5
        {
            height: 101px;
        }
        .style6
        {
            width: 1062px;
        }
        .style7
        {
            height: 101px;
            width: 1062px;
        }
        .style8
        {
            width: 311px;
        }
        .style9
        {
            height: 101px;
            width: 311px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="font-weight: 700; text-decoration: underline" class="style1">
                &nbsp;</td>
            <td style="font-weight: 700; text-decoration: underline" class="style8">
                SAVING:</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style9">
                Account No</td>
            <td class="style7">
                <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
                <asp:Button ID="btnsearch" runat="server" Text="SEARCH" 
                    onclick="btnsearch_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="Enter the Account no" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="GridView1_RowCommand" Width="642px" Height="125px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
    <Columns>
         <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
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
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                Date</td>
            <td class="style6">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" Format="yyyy-MM-dd"
                    Enabled="True" TargetControlID="txtdate">
                </asp:CalendarExtender>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Enter the valid date" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                Amount</td>
            <td class="style6">
                <asp:TextBox ID="txtamt" runat="server"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtamt" ErrorMessage="Enter the amount" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                Cheque No</td>
            <td class="style6">
                <asp:TextBox ID="txtcheque" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcheque" ErrorMessage="This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="SAVE" onclick="btnsave_Click" 
                    CausesValidation="False" />
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnclear" runat="server" Text="CLEAR" 
                    onclick="btnclear_Click" CausesValidation="False" />
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

