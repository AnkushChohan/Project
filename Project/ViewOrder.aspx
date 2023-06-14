<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="ViewOrder.aspx.cs" Inherits="ViewOrder" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>


        <br />


    <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
        Text="View Order" Font-Bold="False" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#CE0000"></asp:Label>
    <br />
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" Width="80%" 
        AutoGenerateColumns="False">
           <Columns>
                <asp:BoundField HeaderText="User ID" DataField="uid"/>
                <asp:BoundField HeaderText="Items" DataField="items"/>
                <asp:BoundField HeaderText="Total" DataField="Total" />
                <asp:BoundField HeaderText="Mode of Payment" DataField="modeofpayment" />
                 <asp:BoundField HeaderText="Date" DataField="date" />
                </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CE0000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
       
    </asp:GridView>
  

        <br />
  

</div>




</asp:Content>
