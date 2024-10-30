<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Fixed.aspx.cs" Inherits="_Fixed" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 620px;
        }
        .style4
        {
            width: 400px;
        }
        .style5
        {
        }
        .style7
        {
            width: 255px;
            height: 32px;
        }
        .style8
        {
            width: 620px;
            height: 32px;
        }
        .style9
        {
            width: 400px;
            height: 32px;
        }
        .style10
        {
            color: #0033CC;
        }
        .style11
        {
            color: #0033CC;
        }
        .style13
        {
            color: #0033CC;
            width: 462px;
        }
        .style14
        {
            width: 462px;
        }
        .style15
        {
            width: 462px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Account No</td>
            <td class="style3">
                <asp:TextBox ID="txtno" runat="server" Height="40px" Width="222px" 
                    BorderColor="Black" BorderWidth="5px" MaxLength="15"></asp:TextBox>
                <asp:Button ID="btnsearch" runat="server" Text="Search" 
                    onclick="btnsearch_Click" CausesValidation="False" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="118px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="Enter the Account No" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style5" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
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
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Mode of Payment</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbcash" runat="server" AutoPostBack="True" GroupName="a" 
                    Text="Cash" oncheckedchanged="rbcash_CheckedChanged" 
                    style="color: #0033CC" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbcheque" runat="server" AutoPostBack="True" GroupName="a" 
                    Text="Cheque" oncheckedchanged="rbcheque_CheckedChanged" 
                    style="color: #0033CC" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:Panel ID="Panel1" runat="server" Width="753px">
                    <span class="style11">Cheque No</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcheque" runat="server" Height="40px" Width="223px" 
                        BorderColor="Black" BorderWidth="5px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtcheque" ErrorMessage="This field should not be empty" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <span class="style11">Bank Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtbank" runat="server" Height="40px" Width="223px" 
                        BorderColor="Black" BorderWidth="5px" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtbank" ErrorMessage="*This field should not be empty" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <span class="style11">Branch Name&nbsp;</span>&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="drpbranch" runat="server" Height="29px" Width="136px">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <span class="style11">IFSC Code</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcode" runat="server" Height="40px" Width="223px" 
                        BorderColor="Black" BorderWidth="5px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtcode" ErrorMessage="*This field should not be empty" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </asp:Panel>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Date</td>
            <td class="style3">
                <asp:TextBox ID="txtdate" runat="server" Height="40px" Width="223px" 
                    BorderColor="Black" BorderWidth="5px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" Format="yyyy-MM-dd"
                    Enabled="True" TargetControlID="txtdate">
                </asp:CalendarExtender>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*Enter the valid date" ControlToValidate="txtdate" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Amount</td>
            <td class="style3">
                <asp:TextBox ID="txtamt" runat="server" Height="40px" Width="223px" 
                    BorderColor="Black" BorderWidth="5px" MaxLength="10"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*Enetr the amount" ControlToValidate="txtamt" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Number Of years</td>
            <td class="style3">
                <asp:DropDownList ID="drpyear" runat="server">
                    <asp:ListItem>-- Choose Year --</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Interest (%)</td>
            <td class="style3">
                <asp:TextBox ID="txtinterest" runat="server" AutoPostBack="True" 
                    ontextchanged="txtinterest_TextChanged" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="5px" Height="40px" MaxLength="5" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtinterest" ErrorMessage="*This field should not be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Amount after
                <asp:Label ID="lblyear" runat="server"></asp:Label>
                &nbsp;year :<asp:Label ID="lbltotal" runat="server"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;<td class="style10">
                Deposited By<td class="style3">
                <asp:Label ID="lbldeposit" runat="server"></asp:Label>
&nbsp;
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnsave" runat="server" Text="Save" 
                    onclick="btnsave_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="118px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" CausesValidation="False" BackColor="#3399FF" 
                    BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" 
                    Width="119px" />
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

