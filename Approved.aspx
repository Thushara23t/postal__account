<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Approved.aspx.cs" Inherits="_Approved" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style2
        {
            height: 32px;
            color: #0033CC;
        }
        .style3
        {
            width: 243px;
        }
        .style4
        {
            height: 32px;
            color: #0033CC;
            width: 243px;
        }
        .style5
        {
            height: 32px;
            width: 243px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <strong></strong>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Searched by Status</td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style1">
                <asp:RadioButton ID="rball" runat="server" GroupName="a" Text="All" 
                    Checked="True" style="color: #0033CC" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbapproved" runat="server" GroupName="a" Text="Approved" 
                    style="color: #0033CC" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbrejected" runat="server" GroupName="a" Text="Rejected" 
                    style="color: #0033CC" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbonline" runat="server" GroupName="a" Text="Online" 
                    style="color: #0000FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbmanul" runat="server" GroupName="a" Text="Manual" 
                    style="color: #0033CC" />
            </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsearch" runat="server" Height="46px" 
                    onclick="btnsearch_Click" Text="Search" Width="173px" BackColor="#3399FF" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                 &nbsp;</td>
            <td>
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                     GridLines="None">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
        <asp:BoundField DataField="account_id" HeaderText="Account No" 
             ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="firstname" HeaderText="firstname" 
             ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="state" HeaderText="state" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="phoneno" HeaderText="phone_no" 
             ItemStyle-Width="150px" >   
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="email" HeaderText="email" ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
         <asp:BoundField DataField="status" HeaderText="status" ItemStyle-Width="150px" >                           
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnapprove" runat="server" Text="Approve" 
                    onclick="btnapprove_Click" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreject" runat="server" Text="Reject" 
                    onclick="btnreject_Click" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="119px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

