<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Document.aspx.cs" Inherits="Document" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style11
        {
            text-decoration: underline;
            width: 249px;
            color: #0033CC;
            height: 32px;
        }
        .style14
        {
            width: 249px;
            color: #0033CC;
        }
        .style15
        {
            height: 32px;
            width: 249px;
            color: #0033CC;
        }
        .style18
        {
            height: 41px;
        }
        .style19
        {
            height: 32px;
            }
        .style20
        {
            width: 249px;
        }
        .style21
        {
            height: 41px;
            width: 249px;
        }
        .style22
        {
            color: #0033CC;
        }
    .style23
    {
        height: 32px;
        width: 417px;
    }
    .style24
    {
        text-decoration: underline;
        width: 417px;
        color: #0033CC;
        height: 32px;
    }
    .style25
    {
        width: 417px;
        color: #0033CC;
    }
    .style26
    {
        height: 32px;
        width: 417px;
        color: #0033CC;
    }
    .style27
    {
        width: 417px;
    }
    .style28
    {
        height: 41px;
        width: 417px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width:100%;">
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style11">
            </td>
            <td class="style1">
                <strong><span class="style22">DOCUMENT:</span> </strong>
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style14">
                Account No</td>
            <td>
                <asp:TextBox ID="txtno" runat="server" BorderWidth="5px" Height="40px" 
                    Width="213px" BorderColor="Black" MaxLength="15"></asp:TextBox>
&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style19" colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="737px" Height="230px">
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
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style15">
                Adhar Card</td>
            <td class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" BorderWidth="5px" 
                    Height="46px" BorderColor="Black" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style14">
                Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" BorderWidth="5px" 
                    Height="46px" BorderColor="Black" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="FileUpload2" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style14">
                Pan Card</td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" BorderWidth="5px" 
                    Height="46px" BorderColor="Black" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="FileUpload3" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style21">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupload" runat="server" Text="Upload Document" 
                    onclick="btnupload_Click" Width="238px" Height="44px" 
                    CausesValidation="False" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style18">
                <asp:Button ID="btnclear" runat="server" Text="Clear Document" 
                    onclick="clear_Click" Height="47px" Width="267px" CausesValidation="False" 
                    BackColor="#3399FF" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style19">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

