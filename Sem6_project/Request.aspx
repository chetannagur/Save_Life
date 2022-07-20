<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="Sem6_project.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Request For Donation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .a1
  {
      float:left;
      width:31%;
      height:590px;
      margin-left:2%;
      border-style:groove;
     
  }
   .b1
  {
      width:100%;
      height:10px;
  }
  .c1
  {
      margin-left:32%;
  }
  
  input[type=text],input[type=password]
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
            border-style: outset;
        border-color: inherit;
        border-width: medium;
        width:35%;
            padding:20px;
            height:100%;
            margin-left:10%;
            
           float:left;
            margin-top:10px;
         }
         #btn1
         {
            width:20%;
           
            border:none;
            background-color:green;
            padding:14px 20px;
            margin:8px 0;        
            cursor:pointer;
            float:left;
            color: white;
         }
         .i1
         {
             margin-left:400px;
         }
  .container2
         {
            border-style: outset;
        border-color: inherit;
        border-width: medium;
        width:40%;
            padding:20px;
            height:100%;
            margin-left:11%;
           float:left;
            margin-top:10px;
         }
        
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="b1"></div>
<div class="a1">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
            DynamicHorizontalOffset="2" Font-Names="Constantia" Font-Size="Larger" 
            ForeColor="Blue" Orientation="Vertical" StaticSubMenuIndent="10px" 
            Width="100%" BorderStyle="Solid" RenderingMode="Table" 
        Font-Bold="True" Height="100%" >
            <DynamicHoverStyle BackColor="#FF3300" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="White" />
            <DynamicSelectedStyle BackColor="#FFFFCC" />
        <Items>
            <asp:MenuItem Text="Search Blood Donor" Value="Search Blood Donor" 
                NavigateUrl="~/SearchDonor.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="Request For Blood Donation" 
                Value="Request For Blood Donation" NavigateUrl="~/Request.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Check Blood Stock" Value="Check Blood Stock" 
                NavigateUrl="~/ViewStock.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Request For Blood" Value="Request For Blood" 
                NavigateUrl="~/RequestBlood.aspx"></asp:MenuItem>
        </Items>
            <StaticHoverStyle BackColor="#FF3300" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FF6666" />
    </asp:Menu>
</div>

  <div class="c1">
        <div>
            &nbsp;&nbsp;<asp:Label ID="lbldate" runat="server" Visible="False"></asp:Label>
            <asp:Image ID="Image1" runat="server" CssClass="i1" />
        </div>
        <br />
        
     <div class="container1">
        
        Name:-
        <asp:TextBox ID="txtName" runat="server" Enabled="false"></asp:TextBox>
        <br />
         Email:-
        <asp:TextBox ID="txtEmail" runat="server" Enabled="false"></asp:TextBox>
        <br />
         Mobile:-
        <asp:TextBox ID="txtMobile" runat="server" Enabled="false"></asp:TextBox>
        <br />
        Alternate Mobile No.:-
        <asp:TextBox ID="Txtmob2" runat="server"  ></asp:TextBox>
        <br />
       
    </div>
   
     <div class="c1">
    <div class="container2">
    Blood Group:-
        <asp:TextBox ID="txtBG" runat="server" Enabled="false" ></asp:TextBox>
        <br />
         Address:-
        <asp:TextBox ID="txtAdd" runat="server" Enabled="false" ></asp:TextBox>
        <br />
         City:-
        <asp:TextBox ID="txtCity" runat="server" Enabled="false" ></asp:TextBox>
        <br />
        <br />
         <asp:Button CssClass="btn_style" BorderStyle="Ridge" ForeColor="White" ID="btn" runat="server" Text="Submit" onclick="btn_Click" />
         
        <br />
        <br />
         
    </div>
     </div> 
     </div>
     
        <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; position:fixed; bottom:0;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>   
 
</asp:Content>
