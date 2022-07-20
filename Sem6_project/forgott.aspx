<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="forgott.aspx.cs" Inherits="Sem6_project.forgott" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Forgott Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="boostrap/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="boostrap/Style.css" rel="stylesheet" type="text/css" />
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height: 5px">
    </div>
<div class="s1" 
        
        
    
        style=" width:100%; text-align: center; background-image: url('boostrap/pngtree-geometric-gradient-creative-blood-donation-poster-background-material-image_134137.jpg');">
            <img src="boostrap/Login_Panel_Image.png" class="animated fadeInRightBig" alt="" />
        </div>
        <div class="container1" style=" text-align: center;">
            <div class="inner animated fadeInLeft">
                <asp:Label ID="Label1" runat="server" Text="Change Password" Font-Bold="True" 
                    Font-Italic="True" Font-Names="Constantia" Font-Size="XX-Large" 
                    ForeColor="#990000"></asp:Label><br />
                <br />
                <asp:Label ID="Label2" CssClass="lbl1 lblstyle" runat="server" Text="Email" ></asp:Label><br />
                <asp:TextBox ID="txtemail" CssClass="txtstyle" runat="server" 
                    Font-Size="Medium" AutoPostBack="True" 
                    ontextchanged="txtemail_TextChanged" ></asp:TextBox><br />
                <br />
                 <asp:Label ID="Label4" CssClass="lbl1 lblstyle" runat="server" Text="Security Question"></asp:Label><br />
                <asp:TextBox ID="txtque" CssClass="txtstyle" runat="server" 
                    Font-Size="Medium" Enabled="false"></asp:TextBox><br />
                <br />
                 <asp:Label ID="Label5" CssClass="lbl1 lblstyle" runat="server" Text="Answer"></asp:Label><br />
                <asp:TextBox ID="txtans" CssClass="txtstyle" runat="server" 
                    Font-Size="Medium"></asp:TextBox><br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="lbl2 lblstyle" Text="Password"></asp:Label><br />
                <asp:TextBox ID="txtpass" CssClass="txtstyle" runat="server" 
                    Font-Size="Medium" TextMode="Password"></asp:TextBox><br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="Ridge" Font-Bold="True" 
                    ForeColor="Blue" onclick="Button1_Click" />
               
                <br />
                
                <br />
                   
            </div>
            </div>
 <div style="height: 5px"></div>
     <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300;">
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>

</asp:Content>
