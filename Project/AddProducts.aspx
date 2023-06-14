<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="AddProducts.aspx.cs" Inherits="ProductEntry" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
<tr>
<td colspan="2">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#CE0000" Text="Add New Products Details"></asp:Label>
    <br />
    <br />
</td>
</tr>

<tr>
<td>

    Product Id</td>
<td>
    <asp:TextBox ID="Txtprodid" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
<td>Product Name</td>
<td>
    <asp:TextBox ID="txtprodname" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
<td>Select Image</td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
    <br />
    <asp:Image ID="Image1" runat="server" Height="154px" Width="162px" />
    </td>
</tr>
<tr>
<td>Company</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="155px">
        <asp:ListItem>Nokia</asp:ListItem>
        <asp:ListItem>Samsung</asp:ListItem>
        <asp:ListItem>Apple</asp:ListItem>
        <asp:ListItem>Sony</asp:ListItem>
    
    </asp:DropDownList>
    </td>
</tr>

<tr>
<td>Short Description</td>
<td>
    <asp:TextBox ID="txtsdesc" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
<td>Price</td>
<td>
    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="txtprice" ErrorMessage="Enter Valid Price" 
        MaximumValue="9900000" MinimumValue="10000"></asp:RangeValidator>
    </td>
</tr>


<tr>
<td></td>
<td>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" />
    </td>
</tr>

<tr>
<td></td>
<td></td>
</tr>


</table>


</asp:Content>
