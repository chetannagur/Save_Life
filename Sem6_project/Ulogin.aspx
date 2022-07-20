<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Ulogin.aspx.cs" Inherits="Sem6_project.Ulogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">User Login
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
                <asp:Label ID="Label1" runat="server" Text="Log-In" Font-Bold="True" 
                    Font-Italic="True" Font-Names="Constantia" Font-Size="XX-Large" 
                    ForeColor="#990000"></asp:Label><br />
                <br />
                <asp:Label ID="Label2" CssClass="lbl1 lblstyle" runat="server" Text="Email"></asp:Label><br />
                <asp:TextBox ID="TextBox1" CssClass="txtstyle" runat="server" 
                    Font-Size="Medium"></asp:TextBox><br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="lbl2 lblstyle" Text="Password"></asp:Label><br />
                <asp:TextBox ID="TextBox2" CssClass="txtstyle" runat="server" 
                    Font-Size="Medium" TextMode="Password"></asp:TextBox><br />
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="btn_style" runat="server" Text="Log In" Font-Bold="True" 
                    ForeColor="white" onclick="Button1_Click" />
               
                <br />
                
                <br />
                <asp:Button ID="btnsignup" CssClass="btn_style" runat="server" Text="Create New Account" Font-Bold="True" 
                    ForeColor="white" onclick="btnsignup_Click" />
                     <asp:Button ID="btnfrgtpass" CssClass="btn_style" runat="server" Text="Forgott Password??"  Font-Bold="True" 
                    ForeColor="white" onclick="btnfrgtpass_Click" />
                    <br />
                <asp:Label ID="errlbl" runat="server" Text="Label " Visible="False" ForeColor="Red" Font-Bold="True"></asp:Label>
            </div>
            </div>
 <div style="height: 5px"></div>
     <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300;">
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>
</asp:Content>
