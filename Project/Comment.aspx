<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Comment.aspx.cs" Inherits="Comment" %>
<asp:Content ID="head" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="JScript.js"></script>
<script src="JScript2.js" type="text/javascript"></script>
<link href="JScript3.js"
    rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>


    <br />
    <asp:Label ID="Label1" runat="server" Text="View Comment" Font-Size="X-Large" 
            Font-Underline="True" ForeColor="#CE0000" Font-Bold="True"></asp:Label>
        <br />
    <br />
    <br />
    <table border="1" width="80%">
    <tr>
    <td class="style1"><h2>Product Name :</h2></td>
    <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
    <td colspan="2"><center>
        <br />
        <asp:Image ID="Image1" runat="server" />
        <br />
        </center>
        </td>
        </tr>
        <tr>
    <td class="style1"><h2>Cost:</h2></td>
     <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
    <td class="style1"><h2>Description:</h2></td>
     <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
    <td class="style1"><h2>Overall Rating:<br /><h6> 
        <asp:Label ID="Label8" runat="server" Text="Rating Based On "></asp:Label>
        </h6>
        </td>
     <td><asp:Label ID="Label7" runat="server" Text="No Comments Yet"></asp:Label></td>
    </tr>
    <tr>
    <td colspan="2"> 
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" 
            AutoGenerateColumns="False" Width="80%">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CE0000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <Columns>
                <asp:BoundField HeaderText="User ID" DataField="userid"/>
                <asp:BoundField HeaderText="Comment" DataField="comment"/>
                <asp:BoundField HeaderText="Rate" DataField="rate"/>
</Columns>
    </asp:GridView>
        <br />
        <center>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Comment" Height="40px" Width="100px" BorderColor="Black" 
                CssClass="button" Font-Bold="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button 
                ID="Button2" runat="server" 
                onclick="Button2_Click" Text="Buy" Width="100px" Height="40px" 
                BorderColor="Black" CssClass="button" Font-Bold="True" />
        </center>
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server"><center>
            <asp:Label ID="Label6" runat="server" Text="Enter Quantity :-"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                Text="Add To Cart" /></center>
        </asp:Panel>
        </td>
     
    </tr>
    
    </table>

    <style type="text/css">
        
        #mask
        {
            position: fixed;
            left: 0px;
            top: 0px;
            z-index: 4;
            opacity: 0.4;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=40)"; /* first!*/
            filter: alpha(opacity=40); /* second!*/
            background-color: gray;
            display: none;
            width: 100%;
            height: 100%;
        }
        .style1
        {
            width: 226px;
        }
    </style>
    
    <script type="text/javascript" language="javascript">
        function ShowPopup() {
            $('#mask').show();
            $('#<%=pnlpopup.ClientID %>').show();
        }
        function HidePopup() {
            $('#mask').hide();
            $('#<%=pnlpopup.ClientID %>').hide();
        }
        $(".btnClose").live('click', function () {
            HidePopup();
        });
    </script>
    
     <asp:Panel ID="pnlpopup" runat="server"  BackColor="White" Height="250px"
            Width="300px" Style="z-index:111;background-color: White; position: absolute; left: 50%; top: 100%; 
 
border: outset 2px gray;padding:5px;display:none">
            <table width="100%" style="width: 100%; height: 100%;" cellpadding="0" cellspacing="5">
                <tr style="background-color: #CE0000">
                    <td colspan="2" style="color:White; font-weight: bold; font-size: 1.2em; padding:3px"
                        align="center">
                        Add  Comment <a id="closebtn" style="color: white; float: right;text-decoration:none" class="btnClose"  href="Comment.aspx">X</a>
                    </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label9" runat="server" Text="Comment  :-"></asp:Label>&nbsp&nbsp
                </td>
                    <td  style="width: 50%; text-align: center;">
                           
                          <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
              
               
               
                <tr>
                    <td colspan="2">
                      <center> <asp:Button ID="add" runat="server" Text="Submit" CssClass="button"  
                            CommandArgument='<%#Eval("id")%>' CommandName="comment" 
                            onclick="add_Click" BorderColor="Black" BorderWidth="1" Height="35px" Width="100px" Font-Bold="True" /></center> 
                            
                    </td>
                </tr>
            </table>
        </asp:Panel>
   

   
</div>

</asp:Content>
