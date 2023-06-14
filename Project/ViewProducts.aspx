<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master"CodeFile="ViewProducts.aspx.cs" Inherits="ViewBuyParts" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceholderside" runat="server">
    <table>
<tr>
<td><h2> Select Mobile Type</h2></td>
</tr>
<tr><td>
    <asp:ListBox ID="ListBox1" runat="server">
        <asp:ListItem>Nokia</asp:ListItem>
        <asp:ListItem>Samsung</asp:ListItem>
        <asp:ListItem>Apple</asp:ListItem>
        <asp:ListItem>Sony</asp:ListItem>
    </asp:ListBox>
    <br />
</td></tr>
<tr><td>
    <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" /></td></tr>
</table>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <center><table width="80%" class="intabular2">
<tr>
<td colspan="3">
    <asp:Label ID="Label0" runat="server" Text="All Products" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    </td>
</tr>

<tr>
<td width="200px">
    <center>
        <asp:ImageButton ID="ImageButton1" runat="server" Width="150px" 
            Height="250px" onclick="ImageButton1_Click" /><br />

    <asp:LinkButton ID="LinkButton1" runat="server" 
            ForeColor="Black" onclick="LinkButton1_Click">LinkButton</asp:LinkButton>
    <br />
        <asp:Label ID="lblp1" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
        <br />
    </center>
    </td>
<td width="200px">
<center>
    <asp:ImageButton ID="ImageButton2" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton2_Click"/><br />

    <asp:LinkButton ID="LinkButton2" runat="server" 
        ForeColor="Black" onclick="LinkButton2_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp2" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
    </center>

</td>
<td width="200px">
<center>
    <asp:ImageButton ID="ImageButton3" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton3_Click"/><br />

    <asp:LinkButton ID="LinkButton3" runat="server" 
        ForeColor="Black" onclick="LinkButton3_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp3" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td>
<center>
    <asp:ImageButton ID="ImageButton4" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton4_Click" /><br />

    <asp:LinkButton ID="LinkButton4" runat="server" 
        ForeColor="Black" onclick="LinkButton4_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp4" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton5" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton5_Click"/><br />

    <asp:LinkButton ID="LinkButton5" runat="server" 
        ForeColor="Black" onclick="LinkButton5_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp5" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton6" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton6_Click" /><br />

    <asp:LinkButton ID="LinkButton6" runat="server" 
        ForeColor="Black" onclick="LinkButton6_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp6" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td>
<center>
    <asp:ImageButton ID="ImageButton7" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton7_Click"/><br />

    <asp:LinkButton ID="LinkButton7" runat="server"  
        ForeColor="Black" onclick="LinkButton7_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp7" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton8" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton8_Click"/><br />

    <asp:LinkButton ID="LinkButton8" runat="server"
        ForeColor="Black" onclick="LinkButton8_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp8" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton9" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton9_Click" /><br />

    <asp:LinkButton ID="LinkButton9" runat="server" 
        ForeColor="Black" onclick="LinkButton9_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp9" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td>
<center>
    <asp:ImageButton ID="ImageButton10" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton10_Click" /><br />

    <asp:LinkButton ID="LinkButton10" runat="server" ForeColor="Black" 
        onclick="LinkButton10_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp10" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label13" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton11" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton11_Click" /><br />

    <asp:LinkButton ID="LinkButton11" runat="server"  
        ForeColor="Black" onclick="LinkButton11_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp11" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton12" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton12_Click" /><br />

    <asp:LinkButton ID="LinkButton12" runat="server"  
        ForeColor="Black" onclick="LinkButton12_Click">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp12" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label15" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
</tr>

<tr>
<td></td>
<td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Previous" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Next" onclick="Button2_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Previous" />
    &nbsp;<asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
        Text="Next" />
    <asp:Label ID="Label2" runat="server" Text="0" Visible="False"></asp:Label>
    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    </td>
<td></td>
</tr>
</table>
</center>
</asp:Content>


