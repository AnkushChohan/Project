<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#CE0000" Text="Fake User's Comments"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" Width="85%" 
        AutoGenerateColumns="False">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CE0000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

        <Columns>
        <asp:BoundField HeaderText="IP Address" DataField="Ip" />
        <asp:BoundField HeaderText="User ID" DataField="UserID" />
        <asp:BoundField HeaderText="Product Name" DataField="product_name" />
        <asp:BoundField HeaderText="Company" DataField="product_company" />
        <asp:BoundField HeaderText="Comments" DataField="Comment" />
        <asp:BoundField HeaderText="Rate" DataField="rate" />
        </Columns>

    </asp:GridView>
    <br />
    <br />
    <asp:Button 
                ID="Button2" runat="server" 
                onclick="Button2_Click" Text="Discard" Width="100px" Height="40px" 
                BorderColor="Black" CssClass="button" Font-Bold="True" />
        <br />
    <br />

</div>
</asp:Content>