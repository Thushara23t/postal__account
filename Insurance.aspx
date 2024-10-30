<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Insurance.aspx.cs" Inherits="_Insurance" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style4
        {
            width: 235px;
            color: #0033CC;
        }
        .style5
        {
            color: #0033CC;
        }
        .style6
        {
            width: 410px;
        }
        .style7
        {
            width: 410px;
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                <strong></strong></td>
            <td>
                &nbsp;</td>
            <td>
                <strong></strong></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                Account No</td>
            <td>
                <asp:TextBox ID="txtno" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" Width="223px" MaxLength="15"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" 
                    Text="Search" CausesValidation="False" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="116px" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="*Enter the account no" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1" colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="GridView1_RowCommand" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="778px">
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
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                Branch Name</td>
            <td>
                <asp:DropDownList ID="drpbranch" runat="server">
                </asp:DropDownList>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                Policy No</td>
            <td>
                <asp:TextBox ID="txtpolicy" runat="server" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" Width="222px" MaxLength="13"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpolicy" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                Date</td>
            <td>
                <asp:TextBox ID="txtreceipt" runat="server" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" Width="223px"></asp:TextBox>
                <asp:CalendarExtender ID="txtreceipt_CalendarExtender" runat="server"  Format="yyyy-MM-dd"
                    Enabled="True" TargetControlID="txtreceipt">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtreceipt" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                Maturity</td>
            <td>
                <asp:DropDownList ID="ddlmaturity" runat="server">
                    <asp:ListItem>1 </asp:ListItem>
                    <asp:ListItem>2 </asp:ListItem>
                    <asp:ListItem>3 </asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20 </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;<span class="style5">Deposit</span></td>
            <td>
                <asp:TextBox ID="txtamt" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" Width="223px" MaxLength="10"></asp:TextBox>
                <span class="style5">&nbsp;Per Month</span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtamt" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                Interest</td>
            <td>
                <asp:TextBox ID="txtinterest" runat="server" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" Width="223px" MaxLength="5" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtinterest" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
                    BackColor="#3399FF" BorderColor="Black" 
                    Font-Bold="True" ForeColor="Black" Width="118px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" CausesValidation="False" BackColor="#3399FF" 
                    BorderColor="Black" Font-Bold="True" ForeColor="Black" Width="118px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

