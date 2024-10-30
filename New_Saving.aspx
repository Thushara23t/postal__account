<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="New_Saving.aspx.cs" Inherits="New_Saving" %>

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
            width: 173px;
        }
        .style5
        {
        }
        .style7
        {
            width: 173px;
            color: #0033CC;
            height: 47px;
        }
        .style8
        {
            height: 47px;
        }
        .style9
        {
            width: 173px;
            color: #0033CC;
        }
        .style10
        {
            color: #0033CC;
        }
        .style11
        {
            width: 173px;
            height: 48px;
        }
        .style12
        {
            height: 48px;
        }
        .style13
        {
            width: 173px;
            height: 50px;
        }
        .style14
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Account No</td>
            <td class="style8">
                <asp:TextBox ID="txtno" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Font-Bold="True" ForeColor="Black" Height="40px" Width="223px" 
                    MaxLength="15"></asp:TextBox>
                <asp:Button ID="btnview" runat="server" Text="View" CausesValidation="False" 
                    onclick="btnview_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Width="118px" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="*Enter the account number" 
                    ForeColor="#FF3300" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="969px">
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
            <td class="style9">
                Mode Of Payment</td>
            <td>
              
                &nbsp;&nbsp;
                <asp:RadioButton ID="rbcash" runat="server" AutoPostBack="True" 
                    GroupName="search" Text="CASH" oncheckedchanged="rbcash_CheckedChanged" 
                    style="color: #0033CC" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbcheque" runat="server" AutoPostBack="True" 
                    GroupName="search" Text="CHEQUE" 
                    oncheckedchanged="rbcheque_CheckedChanged" style="color: #0033CC" />
              
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
              
                <asp:Panel ID="Panel1" runat="server">
                    <span class="style10">Cheque No&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcheque" runat="server" BorderColor="Black" 
                        BorderWidth="5px" Height="40px" Width="223px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtcheque" ErrorMessage="*This field should not be empty" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <span class="style10">Bank Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="txtbank" runat="server" BorderColor="Black" BorderWidth="5px" 
                        CssClass="style10" Height="40px" Width="223px" MaxLength="15"></asp:TextBox>
                    <span class="style10">&nbsp;&nbsp; </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtbank" CssClass="style10" 
                        ErrorMessage="*This field should not be empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <span class="style10">
                    <br />
                    <br />
                    Branch Name&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="drpbranch" runat="server" CssClass="style10">
                    </asp:DropDownList>
                    <span class="style10">
                    <br />
                    <br />
                    IFSC Code&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcode" runat="server" BorderColor="Black" BorderWidth="5px" 
                        Height="40px" Width="223px" MaxLength="10"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtcode" ErrorMessage="*This field should not be empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Amount</td>
            <td>
              
                <asp:TextBox ID="txtamount" runat="server" BorderColor="Black" 
                    BorderWidth="5px" ForeColor="Black" Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
              
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtamount" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
              
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Date</td>
            <td>
              
                <asp:TextBox ID="textdate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    ForeColor="Black" Height="40px" Width="223px"></asp:TextBox> 
                <asp:CalendarExtender ID="textdate_CalendarExtender" runat="server" Format="yyyy-MM-dd"
                    Enabled="True" TargetControlID="textdate">
                </asp:CalendarExtender>
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="textdate" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
              
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style14">
              
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
              
            </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
              
                <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
                    BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="Black" Height="41px" Width="119px" />
                &nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Reset" 
                    onclick="btnclear_Click" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Height="39px" 
                    Width="118px" />
              
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
              
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

