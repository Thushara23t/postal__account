<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Branch.aspx.cs" Inherits="Branch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
        }
        .style6
        {
            width: 167px;
            height: 32px;
            color: #0033CC;
        }
        .style7
        {
            height: 32px;
        }
        .style8
        {
            width: 371px;
            height: 32px;
            color: #0033CC;
        }
        .style9
        {
            height: 32px;
            width: 371px;
        }
        .style10
        {
            width: 371px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                Branch Name</td>
            <td class="style7">
                <asp:TextBox ID="txtbranch" runat="server" MaxLength="20" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtbranch" ErrorMessage="*Branch Name Should Not Be Empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server"  Text="Save" onclick="btnsave_Click" 
                    BackColor="#3399FF" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="100px" />
                &nbsp;&nbsp;<asp:Button ID="btnclear" runat="server" Text="Reset" 
                    onclick="btnclear_Click" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="100px"  />
            &nbsp;
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="100px" 
                    CausesValidation="False" />
                &nbsp;<asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="100px" CausesValidation="False" 
                     />
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="301px" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
        <asp:BoundField DataField="branch_name" HeaderText="Name" 
             ItemStyle-Width="150px" >      
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("branch_id") %>' />
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
    </table>
</asp:Content>

