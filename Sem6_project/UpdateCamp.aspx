<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateCamp.aspx.cs" Inherits="Sem6_project.UpdateCamp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style  type="text/css">

       input[type=text],input[type=password],input[type=number],input[type=date],input[type=time]
      {
            width:100%;
           
            border:1px solid #ccc;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            box-sizing:border-box;
            
      }
         .container1
         {
            width:50%;
            border:outset;
            padding:20px;
            height:100%;
            margin-left:25%;
            background-color: aliceblue;
         }
         #btnsubmit
         {
             width:20%;
            
            border:none;
            padding:14px 20px;
            margin:8px 0;
            color: Black;
            cursor:pointer;
            float:left;
         }
        
        .l1
        {
            width:470px;
            height:1477px;
            margin:7px;
        }
     .style6
    {
        color: #0000FF;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<div class="container1 a1">
<h1 class="style6"><strong>Update Camp</strong></h1>
         Camp Name:-
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Date:-
        <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdate" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Time:-
        <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttime" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

         Contact Details:-
        <asp:TextBox ID="txtcont" runat="server"></asp:TextBox>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcont" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br />
        Select Image:-
        <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
   
       Address:-
        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtadd" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         <br />
         City:-
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtcity" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        
        <asp:Button ID="btnsubmit" CssClass="btn_style" ForeColor="White" runat="server" Text="Submit" 
        onclick="btnsubmit_Click"  BorderStyle="Ridge" />
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
         </div>
</asp:Content>
