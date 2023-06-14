<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="_Default" %>

    <asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
        <div align="center">
        <table class="intabular">
    <tr>
    <td colspan="2" >
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#CE0000" Text="Login"></asp:Label>
        <br />
        <br />
    </td>
    </tr>

    <tr>
    <td>Id</td>
    <td>
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
    <td>Password</td>
    <td>
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>

    <tr>
    <td align="center" colspan="2">
        <asp:Button ID="Button2" runat="server" Text="Login" onclick="Button2_Click" 
            style="height: 26px" />
        </td>
    </tr>

    <tr>
    <td colspan="2">New User ? <a href="Register.aspx">Register Here</a><br />
        </td>
    </tr>
    </table>
    </div>
    </asp:Content>

