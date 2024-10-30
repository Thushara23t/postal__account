<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="View_Document.aspx.cs" Inherits="View_Document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 43px;
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onrowcommand="GridView1_RowCommand" Width="1057px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
         <asp:BoundField DataField="account_id" HeaderText="Account No" ItemStyle-Width="150px" />
       <asp:TemplateField>
            <ItemTemplate>
            
                <asp:LinkButton ID="lnkDownloadA" Text="Download Aadhar" CommandArgument='<%# Eval("adharcard") %>' runat="server" OnClick="DownloadFile1"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownloadP" Text="Download Photo" CommandArgument='<%# Eval("photo") %>' runat="server" OnClick="DownloadFile2"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownloadPa" Text="Download Pan" CommandArgument='<%# Eval("pancard") %>' runat="server" OnClick="DownloadFile3"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>



        <asp:BoundField DataField="status" HeaderText="Status" ItemStyle-Width="150px" >        
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("document_id") %>' />
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
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Verify" 
                    Height="57px" Width="192px" BackColor="#3399FF" BorderColor="Black" 
                    BorderStyle="Solid" CausesValidation="False" Font-Bold="True" 
                    ForeColor="Black" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

