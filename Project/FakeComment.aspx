<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FakeComment.aspx.cs" Inherits="FakeComment" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div>


    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#CE0000" Text="Fake User's Comments"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" Width="70%" 
        AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand">
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
        <asp:BoundField HeaderText="Avg Rate" DataField="Rate" />
        <asp:BoundField HeaderText="No of Comments" DataField="Count" />
        
        <asp:TemplateField HeaderText ="View Details" >
            <ItemTemplate>
                <asp:LinkButton ID="Select" ForeColor="Black" Font-Underline="false" runat ="server" CommandArgument='<%#Eval("Ip")%>' Text ="Select" CommandName ="Select" ></asp:LinkButton>
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>

    </asp:GridView>
    <br />
    <br />


</div>
</asp:Content>