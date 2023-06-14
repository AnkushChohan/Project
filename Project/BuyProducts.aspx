<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="BuyProducts.aspx.cs" Inherits="BuyParts" %>

<asp:Content ID="view" ContentPlaceHolderID="ContentPlaceholderside" runat="server">
    <div><div class="intabular2" style="vertical-align:top">
    <table style="text-align:center;  height: 209px; width: 73%;">
    <tr>
    <td class="style2">
<h2 style="height: 52px"> Select Mobile Category</h2></td></tr>
  <tr><td class="style3">  <asp:ListBox ID="ListBox1" runat="server">
        <asp:ListItem>Nokia</asp:ListItem>
        <asp:ListItem>Samsung</asp:ListItem>
        <asp:ListItem>Apple</asp:ListItem>
        <asp:ListItem>Sony</asp:ListItem>
    </asp:ListBox></td></tr>
        <br />
        <br />
   <tr><td> <asp:Button ID="Button3" runat="server" Text="Search" 
           onclick="Button3_Click" style="height: 26px"  />
 </td></tr></table>
   
    <br />
    <br />
    </div>


</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><table width="80%" class="intabular2">
<tr>
<td colspan="3">
    <asp:Label ID="Label0" runat="server" Text="All Products" ForeColor="Black"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
</tr>

<tr>
<td width="200px">
    <center>
        <asp:ImageButton ID="ImageButton1" runat="server" Width="150px" 
            Height="250px" onclick="ImageButton1_Click1" /><br />

    <asp:LinkButton ID="LinkButton1" runat="server" 
             onclick="LinkButton1_Click1" ForeColor="Black">LinkButton</asp:LinkButton>
    <br />
        <asp:Label ID="lblp1" runat="server" ForeColor="Black"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Visible="False" ForeColor="Black"></asp:Label>
        <br />
    </center>
    </td>
<td width="200px">
<center>
    <asp:ImageButton ID="ImageButton2" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton2_Click1" /><br />

    <asp:LinkButton ID="LinkButton2" runat="server" 
        onclick="LinkButton2_Click1" ForeColor="Black">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp2" runat="server" ForeColor="Black"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Visible="False" ForeColor="Black"></asp:Label>
    </center>

</td>
<td width="200px">
<center>
    <asp:ImageButton ID="ImageButton3" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton3_Click1" /><br />

    <asp:LinkButton ID="LinkButton3" runat="server" 
        ForeColor="Black" onclick="LinkButton3_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp3" ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label5" ForeColor="Black" runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td>
<center>
    <asp:ImageButton ID="ImageButton4" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton4_Click1"/><br />

    <asp:LinkButton ID="LinkButton4" runat="server" 
        ForeColor="Black" onclick="LinkButton4_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp4" ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label6" ForeColor="Black" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton5" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton5_Click1"/><br />

    <asp:LinkButton ID="LinkButton5" runat="server"
         onclick="LinkButton5_Click1" ForeColor="Black">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp5" ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label7" ForeColor="Black" runat="server" Visible="False"></asp:Label>
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton6" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton6_Click1"/><br />

    <asp:LinkButton ID="LinkButton6" runat="server" 
        ForeColor="Black" onclick="LinkButton6_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp6" ForeColor="Black"  runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label8" ForeColor="Black"  runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td>
<center>
    <asp:ImageButton ID="ImageButton7" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton7_Click1"/><br />

    <asp:LinkButton ID="LinkButton7" runat="server" 
       ForeColor="Black"  onclick="LinkButton7_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp7" ForeColor="Black"  runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label9" ForeColor="Black"  runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton8" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton8_Click1" /><br />

    <asp:LinkButton ID="LinkButton8" runat="server" 
        ForeColor="Black" onclick="LinkButton8_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp8" ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label10" ForeColor="Black" runat="server" Visible="False"></asp:Label>
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton9" runat="server" Width="50px" 
        Height="250px" onclick="ImageButton9_Click1"/><br />

    <asp:LinkButton ID="LinkButton9" runat="server" 
        ForeColor="Black" onclick="LinkButton9_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp9" ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label11" ForeColor="Black" runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td>
<center>
    <asp:ImageButton ID="ImageButton10" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton10_Click1"/><br />

    <asp:LinkButton ID="LinkButton10" runat="server" 
       ForeColor="Black" onclick="LinkButton10_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp10" ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label12" ForeColor="Black" runat="server" Visible="False"></asp:Label>
    <br />
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton11" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton11_Click1"/><br />

    <asp:LinkButton ID="LinkButton11" runat="server" 
      ForeColor="Black" onclick="LinkButton11_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp11"  ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label13"  ForeColor="Black" runat="server" Visible="False"></asp:Label>
    </center>
</td>
<td>
<center>
    <asp:ImageButton ID="ImageButton12" runat="server" Width="150px" 
        Height="250px" onclick="ImageButton12_Click1" /><br />

    <asp:LinkButton ID="LinkButton12" runat="server" 
   ForeColor="Black" onclick="LinkButton12_Click1">LinkButton</asp:LinkButton>
    <br />
    <asp:Label ID="lblp12"  ForeColor="Black" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label14"  ForeColor="Black" runat="server" Visible="False"></asp:Label>
    </center>
</td>
</tr>

<tr>
<td></td>
<td>
    
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Previous" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="height: 26px" Text="Next" />
&nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Previous" />
&nbsp;<asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Next" />
    <asp:Label ID="Label15" runat="server" Text="0" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </td>
<td></td>
</tr>
</table>
</center>


</asp:Content>
