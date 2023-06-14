<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ViewBuyProduct.aspx"><---Back</asp:LinkButton>

    <br />
       <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
       <br />
   <center> <table><tr><td rowspan="2"> <br />
       <asp:Image ID="Image1" runat="server" width="150px" Height="250px" 
           style="margin-left: 0px"/>
       <br />
       <asp:Label ID="Lblname" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label>
       <br /></td>
       
       <td class="style1" rowspan="2"> 
           <br />
           <br />
           <br />
          
          
               <asp:Label ID="Label9" runat="server" Text="Description :-  " 
               Font-Size="Larger" Font-Bold="True" Font-Italic="True"></asp:Label>
           <br />
           <br />
           <br />
           <asp:Label ID="Label3" runat="server" Text="Cost:-" Font-Size="X-Large" 
               Font-Bold="True"></asp:Label>
           </td><td rowspan="2">
           <br />
           <br />
           <br />
           <br />
               <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
           <br />
           <br />
           <br />
           <br />
           <asp:Image ID="Image2" runat="server" ImageUrl="~/images/rs.png" Width="16px" 
               Height="23px" />
            <asp:Label ID="lblcost" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label>
           <br />
       </td></tr>
       </table>
      
  
       
      
     
      
   </center>
   </div>
</asp:Content>
