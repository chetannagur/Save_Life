<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addstock1.aspx.cs" Inherits="Sem6_project.addstock1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style  type="text/css">

      input[type=text],input[type=password],input[type=number]
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
            width:35%;
            border:outset;
            padding:20px;
            height:100%;
            margin-left:10%;
            background-color: aliceblue;
         }
         #btn1
         {
             width:20%;
            
            border:none;
            padding:14px 20px;
            margin:8px 0;
            color: Black;
            cursor:pointer;
            float:left;
         }
       
     .a1
     {
         float:left;
     }
     .style6
    {
        text-align: center;
        color: #0000FF;
    }
       .container2
         {
            width:35%;
            border:outset;
            padding:20px;
            height:100%;
            margin-left:52%;
            background-color: aliceblue;
         }
     
     </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<h1 class="style6"><strong>Add Blood Stock </strong> </h1>
 <div class="container1 a1">

         City:-
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtcity" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         A+:-
        <asp:TextBox ID="txtApos" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApos" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         A-:-
        <asp:TextBox ID="txtAneg" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAneg" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         B+:-
        <asp:TextBox ID="txtBpos" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBpos" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         B-:-
        <asp:TextBox ID="txtBneg" runat="server"></asp:TextBox>
        </div>
        <div class="container2 ">
         AB+:-
        <asp:TextBox ID="txtABpos" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtABpos" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         AB-:-
        <asp:TextBox ID="txtABneg" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtABneg" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         O+:-
        <asp:TextBox ID="txtOpos" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtOpos" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         O-:-
        <asp:TextBox ID="txtOneg" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtOneg" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
<br />
            <asp:Button BorderStyle="Ridge" ID="btn1" runat="server" CssClass="btn_style" ForeColor="White" Text="Submit" onclick="btn1_Click" />
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
<br />
        <br />
        
        </div>
        
         
</asp:Content>
