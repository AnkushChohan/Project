<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteH.aspx.cs" Inherits="DeleteH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
	
</asp:Content>



<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div style="height: 584px">
  
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        Text="Delete Products" ForeColor="#CE0000"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Type :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Nokia</asp:ListItem>
        <asp:ListItem>Samsung</asp:ListItem>
         <asp:ListItem>Apple</asp:ListItem>
        <asp:ListItem>Sony</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Product Name:- "></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    <br />
    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Panel ID="Panel3" runat="server" Height="237px" Visible="False">
        <br />
        <asp:Image ID="Image1" runat="server" Height="250px" Width="150px" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
            Text="Delete" Width="61px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="30px" onclick="Button3_Click" Text="Clear" Width="61px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <br />
    <br />
    <br />
    </div>
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
            Width="300px" Style="z-index:111;background-color: White; position: absolute; left:40%; top: 60%; 
 
border: outset 2px gray;padding:5px;display:none">
            <table width="100%" style="width: 100%; height: 100%;" cellpadding="0" cellspacing="5">
                <tr style="background-color: #0924BC">
                    <td colspan="2" style="color:White; font-weight: bold; font-size: 1.2em; padding:3px"
                        align="center">
                        Alert !!!<a id="closebtn" style="color: white; float: right;text-decoration:none" class="btnClose"  href="DeleteH.aspx">X</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 45%; text-align: center;">
                        <asp:Label ID="LabelValidate" runat="server"  Text="You want to delete this product ???"/>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Yes" OnClick="btnUpdate_Click" />
                       <asp:Button ID="Button4" runat="server" Text="No" OnClick="b2_Click" />
                    </td>
                </tr>
</table>

    </asp:Panel>

</asp:Content>