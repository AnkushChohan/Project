<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="pay.aspx.cs" Inherits="pay" %>



<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     Your Cart -----><br />
     <br />
&nbsp;<table class="intabular" >
    <tr><td colspan="2"> <center>
        <br />
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField HeaderText="User Id" DataField="User_id"/>
                <asp:BoundField HeaderText="Item" DataField="Item"/>
                 <asp:BoundField HeaderText="Quantity" DataField="qty"/>
                <asp:BoundField HeaderText="Cost" DataField="cost" />
                <asp:BoundField HeaderText="Total Cost" DataField="tot" />
                
                </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#CE0000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView></center></td></tr>
    <tr><td><asp:Label ID="Label1" runat="server" Text="Customer Id"></asp:Label>
        <br />
        <br />
        </td>
    <td>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <br />
        </td>
    </tr>
    <tr>
    <td colspan="2">
    
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>COD</asp:ListItem>
            <asp:ListItem>Credit Card</asp:ListItem>
            <asp:ListItem>Debit Card</asp:ListItem>
            <asp:ListItem>Cheque</asp:ListItem>
        </asp:RadioButtonList>
    
    </td>
    </tr>
    <tr>
    <td colspan="2">
        <asp:Panel ID="Panel1" runat="server" Height="159px" Visible="False">
        
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Credit Card No"></asp:Label>
            &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter 16 digit Credit Card no" 
                ForeColor="Red" ValidationExpression="^\d{16}$"></asp:RegularExpressionValidator>
        
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="Label4" runat="server" Text="CVV no"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter 3 digit CVV No" 
                ForeColor="Red" ValidationExpression="^\d{3}$"></asp:RegularExpressionValidator>
            <br />
            <br />
        <asp:Label ID="Label5" runat="server" Text="Expiration MM/YYYY"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </asp:Panel>
    </td>
    </tr>
    
        <tr><td>
        <asp:Label ID="Label6" runat="server" Text="Total Charges"></asp:Label>
            <br />
            <br />
            </td>
        <td>
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            <br />
            <br />
            </td>
        </tr>

        <tr><td colspan="2">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Pay" onclick="Button1_Click" 
                Width="67px" />
            <asp:Label ID="Label8" runat="server"></asp:Label>
            <br />
            <br />
            </td></tr>
    </table>
    

</asp:Content>