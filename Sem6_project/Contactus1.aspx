<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contactus1.aspx.cs" Inherits="Sem6_project.Contactus1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
input[type=text],input[type=password],input[type=number]
      {
            width:100%;
           
            border:1px solid #ccc;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            box-sizing:border-box;
            
      }
     .tt
     {
         width:100%;
            height:30%%;
            border:1px solid #ccc;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            box-sizing:border-box;
     } 
     .p1
     {
            width:60%;
            border:outset;
            padding:20px;
            height:100%;
            margin-left:20%;
            background-color: aliceblue;
     }
     .d1
     {
         margin-left:2%;
         
     }
     .d2
     {
         float:left;
         width:48%;
         margin-top:1%;
         border-style:groove;
          background-color:aliceblue;
     }
      .d3
     {
         margin-left:49%;
         margin-top:1.7%;
         width:48%;
         border-style:groove;
         background-color:aliceblue;
     }
    .style6
    {
        text-align: center;
        color: #0000FF;
    }
    .mob
    {
        
    }
    .style7
    {
        font-size: medium;
    }
    .style8
    {
        color: #000000;
    }
    .d22
    {
        padding-left:2%;
    }
    .style9
    {
        text-align: center;
        background-color: #FFFFFF;
    }
    .bt1
    {
        margin-left:50%;
    }
    .dd1
    {
        width:30%;
           border:1px solid #ccc;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            box-sizing:border-box;
    }
    
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="d1">
<h1 class="style6">
    <strong>Contact Us
</strong>
</h1>
<div class="d2" >
<div>
<h1 class="style9"><strong>Email Us</strong></h1>
</div>
<div class="d22">
    <span class="style7">Please use this form to contact us regarding any questions, comments or concerns you may have.
    </span>
<br />
    <asp:Button class="bt1" ID="Button1" runat="server" Text="Contact" 
        onclick="Button1_Click" CssClass="btn_style" ForeColor="White" BorderStyle="Ridge" />
</div>
</div>
<div class="d3">
<div>
<h1 class="style9"><strong>Call Us</strong></h1>
</div>
<div class="d22">
    <span class="style7">Please use this form to contact us regarding any questions, comments or concerns you may have.
    </span>
<br />
    <div class="style8"><strong class="style7">1-987-872-888</strong></div>
</div>
</div>
<br />
<div >
    <asp:Panel CssClass="p1" ID="Panel1" Visible="false" runat="server">
    Your Query Concern:-
    <br />
    <asp:DropDownList ID="DropDownList1"  CssClass="dd1" runat="server"  >
    <asp:ListItem Enabled="true" Text="Select Option" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Media" ></asp:ListItem>
    <asp:ListItem Text="Camp" ></asp:ListItem>
    <asp:ListItem Text="Helpline" ></asp:ListItem>
    <asp:ListItem Text="Other" ></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
     First Name:-
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
     Last Name:-
        <asp:TextBox ID="txtlast" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlast" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
     Email:-
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
     Contact No:-
        <asp:TextBox ID="txtcont" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcont" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
         Zip Code:-
        <asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtzip" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
         Comments:-
        <asp:TextBox CssClass="tt" ID="txtcmnt" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcmnt" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
        <asp:Button BorderStyle="Ridge" class="bt1" ID="btnsubmit" CssClass="btn_style" ForeColor="White" runat="server" Text="Submit" 
            onclick="btnsubmit_Click" />
    </asp:Panel>
</div>
<div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; margin-top:15px;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div> 
</div>
</asp:Content>
