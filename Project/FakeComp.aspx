<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FakeComp.aspx.cs" Inherits="FakeComp" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#CE0000" Text="Fake User's Comments On Company"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" Width="95%" 
        onrowcommand="GridView1_RowCommand" AutoGenerateColumns="False">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CE0000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

        <Columns>
        <asp:BoundField HeaderText="IP Address" DataField="Ip" />
        <asp:BoundField HeaderText="Brand 1" DataField="Brand1" />
        <asp:BoundField HeaderText="Avg Rating" DataField="Rate1" />
        <asp:BoundField HeaderText="No Of Comment" DataField="Count1" />
        <asp:BoundField HeaderText="Brand 2" DataField="Brand2" />
        <asp:BoundField HeaderText="Avg Rating" DataField="Rate2" />
        <asp:BoundField HeaderText="No Of Comment" DataField="Count2" />
        <asp:BoundField HeaderText="Brand 3" DataField="Brand3" />
        <asp:BoundField HeaderText="Avg Rating" DataField="Rate3" />
        <asp:BoundField HeaderText="No Of Comment" DataField="Count3" />

        <asp:TemplateField HeaderText ="View Details" >
            <ItemTemplate>
                <asp:LinkButton ID="Select" ForeColor="Black" runat ="server" CommandArgument='<%#Eval("Ip")%>' Text ="Select" CommandName ="Select" ></asp:LinkButton>
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>

    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />

</div>
</asp:Content>