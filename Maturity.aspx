<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Maturity.aspx.cs" Inherits="_Maturity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style3
        {
            color: #0033CC;
        }
        .style4
        {
            height: 42px;
            color: #0033CC;
        }
        .style5
        {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                Account No<asp:TextBox ID="txtno" runat="server" Width="223px" BorderColor="Black" 
                    BorderWidth="5px" ForeColor="Black" Height="40px" MaxLength="15"></asp:TextBox>
                <asp:Button ID="btnsearch" runat="server" Text="View" 
                    onclick="btnsearch_Click" CausesValidation="False" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="100px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" ForeColor="#333333" 
                     GridLines="None">
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
          <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="150px" >    
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                Policy No<asp:TextBox ID="txtpolicy" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" ForeColor="Black" 
                    Height="40px" Width="225px" MaxLength="15"></asp:TextBox>
&nbsp;&nbsp;<asp:Button ID="btnfind" runat="server" onclick="btnfind_Click" Text="View" 
                    CausesValidation="False" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="100px" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpolicy" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="623px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" 
                        HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

