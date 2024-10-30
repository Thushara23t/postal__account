<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewApplicant.aspx.cs" Inherits="ViewApplicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #0033CC;
            text-align: center;
        }
        .style2
        {
            color: #0033CC;
        }
        .style3
        {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td class="text-decoration-underline">
                &nbsp;</td>
            <td class="style1">
                VIEW APPLICANT:</td>
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
            <td class="style3">
                </td>
            <td class="style3">
                </td>
            <td class="style3">
                <span class="style2">Search</span> <span class="style2">By&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RadioButton ID="rbphone" runat="server" AutoPostBack="True" GroupName="a" 
                    Text="Phone No" CssClass="style2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbano" runat="server" AutoPostBack="True" GroupName="a" 
                    Text="Account No" style="color: #0033CC" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtsearch" runat="server" Height="40px" Width="223px" 
                    BorderColor="Black" BorderWidth="5px" ForeColor="Black" MaxLength="12" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsearch" runat="server" Height="38px" 
                    onclick="btnsearch_Click" Text="Search" Width="130px" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" CausesValidation="False" 
                    Font-Bold="True" ForeColor="Black" />
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
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" CellPadding="4" 
                    AutoGenerateColumns="False" ForeColor="#333333" GridLines="None"   >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>

    <asp:BoundField DataField="account_id" HeaderText="Account No" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>       
        
        <asp:BoundField DataField="branch_id" HeaderText="Branch Name" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="city_id" HeaderText="City Name" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="firstname" HeaderText="Name" ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="middlename" HeaderText="Name" 
             ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="lastname" HeaderText="Name" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="doorno" HeaderText="Door No" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="street" HeaderText="Street" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="state" HeaderText="State" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="pincode" HeaderText="Pincode" 
             ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="phoneno" HeaderText="Phone No" 
             ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        
         <asp:BoundField DataField="status" HeaderText="Status" ItemStyle-Width="150px" >                                                                   
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
                   
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" 
                    HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" 
                    ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   
</asp:GridView>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

