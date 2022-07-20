<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="joincamp.aspx.cs" Inherits="Sem6_project.joincamp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.d1
{
width:auto;
margin-left:5%;
margin-right:5%;
}
.d2
{
    margin-left:25%;
    margin-right:25%;
    width:50%;
}

    .style7
    {
        height: 271px;
        text-align: center;
    }
    .style8
    {
        height: 70px;
        text-align: center;
    }
    .style9
    {
        text-align: center;
        color: #0000FF;
    }

</style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="d1">
<h1 class="style9"><strong>Join Camp</strong></h1>

<div class="d2" style="border-style: groove">
    <table style="width: 100%;">
        <tr>
            <td class="style8">
                
                <asp:Label ID="lblname" runat="server" 
                    style="font-size: x-large; font-weight: 700;"></asp:Label>
                
            </td>
        </tr>
        
        <tr>
            <td class="style7">
                <asp:Image ID="img1" runat="server" Height="250px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lbldate" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lbltime" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lbladd" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lblcity" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lblcont" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Button ID="Button2" runat="server" Height="40px" Text="Confirm" 
                    Width="137px" onclick="Button2_Click" BorderStyle="Ridge" CssClass="btn_style" ForeColor="White" />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    Text="U Can Not Join Camp Now" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lbluname" runat="server" Visible="False"></asp:Label>
&nbsp;
                <asp:Label ID="lblemail" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="lblcontact" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="lbluadd" runat="server" Visible="False"></asp:Label>
            &nbsp;<asp:Label ID="lblbloodg" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        </table>
</div>
</div>
<div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; margin-top:15px;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>  
</asp:Content>
