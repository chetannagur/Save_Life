<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Sem6_project.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Sign Up
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
            margin-left:1%;
            background-color: aliceblue;
         }
         #btnsubmit
         {
             width:20%;
            
            border:none;
            padding:14px 20px;
            margin:8px 0;
            color: white;
            cursor:pointer;
            float:left;
         }
        .a1 {
            float:left;
        }
        .l1
        {
            width:470px;
            height:1477px;
            margin:7px;
        }
     </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="a1">
    <img class="l1" src="assets/img/rImg.jpg" />
</div>
    <div class="container1 a1">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Sign Up" Font-Bold="True" 
                    Font-Italic="True" Font-Names="Constantia" Font-Size="XX-Large" 
                    ForeColor="#990000" style="text-align: center"></asp:Label><br />
         Name:-
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         Email:-
        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
        <br />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Enter Right Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
         Mobile:-
        <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtMobile" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
         Gender:-
         <asp:RadioButton CssClass="btn_style" ForeColor="White" ID="rbmale" GroupName="gen" runat="server" Text="Male" />
         &nbsp;&nbsp;<asp:RadioButton ID="rbfemale" GroupName="gen" runat="server" Text="Female" />
        &nbsp;<br />
        <br />
        Age:-
        <asp:DropDownList ID="ddAge" runat="server">
            <asp:ListItem>Select Age</asp:ListItem>
            <asp:ListItem>Above 18</asp:ListItem>
            <asp:ListItem>Below 18</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddAge" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
       <br />
        <br />
        Blood Group:-
        <asp:DropDownList ID="ddbg" runat="server">
            <asp:ListItem>Select Blood Group</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddbg" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Weight(in kg):-
        <asp:TextBox ID="txtweight" runat="server" TextMode="Number"></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtweight" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         Height(in cm):-
        <asp:TextBox ID="txtheight" runat="server" TextMode="Number"></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtheight" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         Security Questions:-
         <br />
        <asp:RadioButton ID="fevanimal" runat="server" Text="Your Fev. Animal" 
            GroupName="que" oncheckedchanged="fevanimal_CheckedChanged" 
            AutoPostBack="True" /> &nbsp;&nbsp;
        <asp:RadioButton ID="fevplace" runat="server" Text="Your Fev. Place" 
            GroupName="que" oncheckedchanged="fevplace_CheckedChanged" 
            AutoPostBack="True" />&nbsp;&nbsp;
        <asp:RadioButton ID="fevdish" runat="server" Text="Your Fev. Dish" 
            GroupName="que" oncheckedchanged="fevdish_CheckedChanged" 
            AutoPostBack="True" />&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="txtque" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtque" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Select Image:-
        <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
     Password:-
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
         <br />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Password Should be 6 to 10 char" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{6,10}$"></asp:RegularExpressionValidator>
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
        
        <asp:Button ID="btnsubmit" BorderStyle="Ridge" CssClass="btn_style" ForeColor="White" runat="server" Text="Submit" OnClick="btnsubmit_Click1" />
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
         </div>
    <div>
    <img class="l1" src="assets/img/leftImg.jpg" />
   </div>
   <br />
   <br />
   <br />
   <br />
  <br /> 
    <div style="height: 5px"></div>
     <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; " >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>
</asp:Content>
