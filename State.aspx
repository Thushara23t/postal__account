<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="_State" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 127px;
        }
        .style3
        {
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <span class="style3">State</span> <span class="style3">Name</span></td>
            <td>
                <asp:TextBox ID="txtstate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtstate" ErrorMessage="Enter the State name" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
                    BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="Black" Width="118px" />
&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Reset" 
                    onclick="btnclear_Click" BackColor="#3399FF" BorderColor="Black" 
                    Font-Bold="True" ForeColor="Black" Width="118px" />
            &nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="118px" 
                    CausesValidation="False" />
                &nbsp;
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="118px" 
                    CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="301px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
        <asp:BoundField DataField="state_name" HeaderText="State" 
             ItemStyle-Width="150px" >      
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("state_id") %>' />
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
    </table>
</asp:Content>

