<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center><div>
        <br />
    <table class="intabular2">
<tr>
<td colspan="2">
<h2 style="color: #CE0000">Register</h2>
    <p>&nbsp;</p>
</td>
</tr>

<tr>
<td colspan="2" style="color: #FF0000">
All fields marked * are compulsary
    <br />
</td>
</tr>

<tr>
<td>
First Name<br />
&nbsp;</td>
<td>

    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>

    *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="txtfname" 
        ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]+$">Enter 
    valid name</asp:RegularExpressionValidator>

    <br />

</td>
</tr>

<tr>
<td>
Middle Name<br />
&nbsp;</td>
<td>

    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>

    *<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
        runat="server" ControlToValidate="txtmname" 
        ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]+$">Enter 
    valid name</asp:RegularExpressionValidator>

    <br />

</td>
</tr>

<tr>
<td>
Last Name
    <br />
</td>
<td>

    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>

    *<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
        runat="server" ControlToValidate="txtlname" 
        ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]+$">Enter 
    valid name</asp:RegularExpressionValidator>

    <br />

</td>
</tr>

<tr>
<td>

    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>

    <br />

</td>
<td>

    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>

    <br />

</td>
</tr>

<tr>
<td>
Email<br />
&nbsp;</td>
<td>

    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>

    *<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
        runat="server" ErrorMessage="RegularExpressionValidator" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ControlToValidate="txtemail">Enter Valid Email</asp:RegularExpressionValidator>

    <br />

</td>
</tr>

<tr>
<td>
Contact No<br />
&nbsp;</td>
<td>

    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>

    *<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
        runat="server" ErrorMessage="RegularExpressionValidator" 
        ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="txtcontact">Enter Valid Contact
    </asp:RegularExpressionValidator>

    <br />

</td>
</tr>

<tr>
<td>
City<br />
&nbsp;</td>
<td>

    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>

    <br />

</td>
</tr>

<tr>
<td>
Address
    <br />
</td>
<td>

    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>

    <br />

</td>
</tr>


<tr>
<td>
    Username<br />
    </td>
<td>

    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>

    *<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Check" />
    <asp:Label ID="lblusername" runat="server" ForeColor="#3333CC"></asp:Label>
    <br />
    </td>
</tr>


<tr>
<td>
    Password<br />
    </td>
<td>

    <asp:TextBox ID="txtpassword" runat="server" Enabled="False" 
        TextMode="Password"></asp:TextBox>

    *<br />
    </td>
</tr>

<tr>
<td>
Uid<br />
&nbsp;</td>
<td>

    <asp:TextBox ID="txtuid" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

    <br />

</td>
</tr>


<tr>
<td colspan="2">

   

    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
        Text="Please enter all required fields" Visible="False"></asp:Label>

   

    <br />

   

</td>
</tr>

<tr>
<td colspan="2">

    <asp:Button ID="Button1" runat="server" Text="Register" 
        onclick="Button1_Click" />

</td>
</tr>
</table>
</div>
</center>



    <br />



</asp:Content>