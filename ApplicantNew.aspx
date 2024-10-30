<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ApplicantNew.aspx.cs" Inherits="ApplicantNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        color: #0033CC;
        width: 313px;
    }
        .style4
        {
            color: #0033CC;
            height: 48px;
        }
        .style5
        {
            color: #0033CC;
            height: 25px;
        width: 313px;
    }
        .style6
        {
            height: 25px;
        }
    .style8
    {
        color: #0033CC;
        height: 25px;
        width: 17px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 1093px;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Branch Name</td>
            <td>
                <asp:DropDownList ID="drpid" runat="server" Height="40px" >
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                City Name</td>
            <td class="style4">
                <asp:DropDownList ID="drpcity" runat="server" Height="40px" >
                    
                </asp:DropDownList>
                </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                First Name</td>
            <td>
                <asp:TextBox ID="txtfname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="15" Width="224px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Middle Name</td>
            <td>
                <asp:TextBox ID="txtmname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="5" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtmname" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[a-z/sA-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Last Name</td>
            <td>
                <asp:TextBox ID="txtlname" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300" ValidationExpression="[a-z/sA-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Gender</td>
            <td>
                <asp:RadioButton ID="rbmale" runat="server" Text="Male" AutoPostBack="True" 
                    GroupName="a" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbfemale" runat="server" Text="Female" AutoPostBack="True" 
                    GroupName="a" />
&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Door Number</td>
            <td>
                <asp:TextBox ID="txtdoor" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="15" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdoor" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Street</td>
            <td>
                <asp:TextBox ID="txtstreet" runat="server" BorderColor="Black" 
                    BorderWidth="5px" Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtstreet" ErrorMessage="*Enter the street" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                State</td>
            <td>
                <asp:TextBox ID="txtstate" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="15" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtstate" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Pincode</td>
            <td>
                <asp:TextBox ID="txtpin" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="6" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Phone Number</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="10" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*This field should not be empty" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" BorderColor="Black" BorderWidth="5px" 
                    Height="40px" MaxLength="30" Width="223px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*Enter your correct email" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Applicant&#39;s Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" 
                    BorderWidth="5px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnreg" runat="server" onclick="btnreg_Click" 
                    Text="Register as Applicant" Height="45px" 
                    Width="321px" BackColor="#3399FF" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="Black" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

