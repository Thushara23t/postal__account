<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Provident.aspx.cs" Inherits="Provident" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #3366CC;
        }
        .style2
        {
            color: #3366CC;
        }
        .style3
        {
            color: #3366CC;
            width: 14%;
        }
        .style6
        {
        }
        .style8
        {
            width: 14%;
            font-weight: 700;
            height: 32px;
            color: #0033CC;
        }
        .style10
        {
            color: #0033CC;
        }
        .style11
        {
            color: #3366CC;
            width: 10px;
        }
        .style13
        {
            height: 32px;
            width: 1%;
        }
        .style14
        {
            width: 83%;
        }
        .style15
        {
            width: 1%;
        }
        .style18
        {
            height: 32px;
            width: 83%;
        }
        .style19
        {
            width: 10px;
        }
        .style20
        {
            width: 14%;
            font-weight: 700;
        }
        .style21
        {
            width: 14%;
            font-weight: 700;
            color: #0033CC;
        }
        .style22
        {
            height: 32px;
            width: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                <span class="style1"><strong>PROVIDENT FUND FORM</strong></span><span 
                    class="style2">:</span></td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style21">
                Account No</td>
            <td class="style14">
                <asp:TextBox ID="txtno" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Font-Bold="True" ForeColor="Black" Height="40px" Width="223px" 
                    MaxLength="15"></asp:TextBox>
                <asp:Button ID="btnview" runat="server" CausesValidation="False" Text="View" 
                    onclick="btnview_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Height="40px" 
                    Width="118px" />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="*Enter the account number" 
                    ForeColor="#FF3300" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" 
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
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style21">
                Date</td>
            <td class="style14">
                <asp:TextBox ID="txtdate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" Width="223px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style14">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <span class="style10">Basic</span> <span class="style10">Salary</span></td>
            <td class="style14">
                <asp:TextBox ID="txtsalary" runat="server" AutoPostBack="True" 
                    ontextchanged="txtsalary_TextChanged" BorderColor="Black" 
                    BorderWidth="5px" Font-Bold="True" ForeColor="Black" Height="40px" 
                    Width="223px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsalary" ErrorMessage="*This field shoild not be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                </td>
            <td class="style8">
                Amount</td>
            <td class="style18">
                <asp:TextBox ID="txtamt" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtamt" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <span class="style10">Deposited</span> <span class="style10">By</span></td>
            <td class="style14">
                <asp:Label ID="lbldeposit" runat="server"></asp:Label>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style14">
                <asp:Button ID="btnsave" runat="server" Text="Save" 
                    onclick="btnsave_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="118px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" onclick="btnclear_Click" 
                    Text="Clear" BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" Width="118px" />
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

