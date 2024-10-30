<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Applicant.aspx.cs" Inherits="_Applicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 141px;
            text-decoration: underline;
        height: 46px;
    }
        .style4
        {
            height: 32px;
        }
        .style8
        {
            height: 37px;
        }
        .style10
        {
            height: 37px;
        }
    .style11
    {
        height: 46px;
    }
        .style12
        {
            height: 46px;
            color: #0033CC;
            width: 566px;
        }
        .style14
        {
            height: 32px;
            color: #0033CC;
            width: 141px;
        }
        .style17
        {
            color: #0033CC;
            width: 141px;
            height: 33px;
        }
        .style18
        {
            height: 33px;
        }
        .style21
        {
            height: 32px;
            width: 566px;
        }
        .style22
        {
            height: 33px;
            width: 566px;
        }
        .style24
        {
            width: 566px;
        }
        .style25
        {
            height: 46px;
            width: 566px;
        }
        .style26
        {
            height: 37px;
            width: 566px;
        }
        .style27
        {
            color: #0033CC;
            width: 141px;
            height: 49px;
        }
        .style28
        {
            width: 566px;
            height: 49px;
        }
        .style29
        {
            height: 49px;
        }
        .style30
        {
            color: #0033CC;
            width: 141px;
            height: 42px;
        }
        .style31
        {
            width: 566px;
            height: 42px;
        }
        .style32
        {
            height: 42px;
        }
        .style48
        {
            color: #0033CC;
            width: 141px;
        }
        .style49
        {
            height: 46px;
            color: #0033CC;
            width: 141px;
        }
        .style50
        {
            height: 37px;
            }
        .style51
        {
            height: 37px;
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 1093px;">
        <tr>
            <td class="style2">
                </td>
            <td class="style12">
                <strong>APPLICANT:</strong></td>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Account No</td>
            <td class="style24">
                <asp:TextBox ID="txtno" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="12" Width="224px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtno" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style49">
                Branch Name</td>
            <td class="style25">
                <asp:DropDownList ID="drpid" runat="server" Height="40px" >
                </asp:DropDownList>
            </td>
            <td class="style25">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style14">
                City Name</td>
            <td class="style21">
                <asp:DropDownList ID="drpcity" runat="server" Height="40px" >
                    
                </asp:DropDownList>
                </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                First Name</td>
            <td class="style24">
                <asp:TextBox ID="txtfname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[a-z/sA-Z/s&quot;`&quot;]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                Middle Name</td>
            <td class="style24">
                <asp:TextBox ID="txtmname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="5" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtmname" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[a-z/sA-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style49">
                Last Name</td>
            <td class="style25">
                <asp:TextBox ID="txtlname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[a-z/sA-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style25">
                &nbsp;</td>
            <td class="style11">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Gender</td>
            <td class="style24">
                <asp:RadioButton ID="rbmale" runat="server" Text="Male" AutoPostBack="True" 
                    GroupName="a" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbfemale" runat="server" Text="Female" AutoPostBack="True" 
                    GroupName="a" />
&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                Door Number</td>
            <td class="style24">
                <asp:TextBox ID="txtdoor" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdoor" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                Street</td>
            <td class="style24">
                <asp:TextBox ID="txtstreet" runat="server" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" Width="223px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtstreet" ErrorMessage="*Enter the street" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                State</td>
            <td class="style24">
                <asp:TextBox ID="txtstate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" Width="223px" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtstate" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                Pincode</td>
            <td class="style28">
                <asp:TextBox ID="txtpin" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="6" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style28">
                &nbsp;</td>
            <td class="style29">
                </td>
            <td class="style29">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Phone Number</td>
            <td class="style24">
                <asp:TextBox ID="txtphone" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Email</td>
            <td class="style22">
                <asp:TextBox ID="txtemail" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="30" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*Enter your correct email" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td class="style30">
                Deposit</td>
            <td class="style31">
                <asp:TextBox ID="txtdeposit" runat="server" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style32">
                </td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Applicant&#39;s Photo</td>
            <td class="style24">
                <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" 
                    BorderWidth="5px" ForeColor="Black" />
            </td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style51">
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
            <td class="style26">

                &nbsp;<asp:Button ID="btnsave" runat="server" Text="Save" Height="40px" 
                    Width="100px" onclick="btnsave_Click1" 
                    BackColor="#3399FF" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="Black"  />

                &nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnclear" runat="server" Text="Reset" 
                    onclick="btnclear_Click1" 
                    Height="40px" Width="100px" BackColor="#3399FF" BorderStyle="Solid" Font-Bold="True" 
                     />
 &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" CausesValidation="False" 
                    Height="40px" Width="100px" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" />

            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" CausesValidation="False" 
                    Height="40px" Width="100px" BackColor="#3399FF" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="Black" />

            &nbsp;</td>
            <td class="style26">

                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style50" colspan="2">
                
                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" CellPadding="4" 
                    AutoGenerateColumns="False" ForeColor="#333333" GridLines="None"  >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />     
        <asp:BoundField DataField="account_id" HeaderText="Account No" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="branch_name" HeaderText="Branch Name" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
          <asp:BoundField DataField="cityname" HeaderText="City Name" ItemStyle-Width="150px" > 
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="firstname" HeaderText="First Name" ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="middlename" HeaderText="Middle Name" 
             ItemStyle-Width="150px" >  
<ItemStyle Width="150px"></ItemStyle>
         </asp:BoundField>
        <asp:BoundField DataField="lastname" HeaderText="Last Name" ItemStyle-Width="150px" >
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
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   
</asp:GridView>
            </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

