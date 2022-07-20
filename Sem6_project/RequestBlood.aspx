<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="RequestBlood.aspx.cs" Inherits="Sem6_project.RequestBlood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Request Blood
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<style type="text/css">
  .p1
  {
      float:left;
      width:31%;
      height:570px;
      margin-left:2%;
      border-style:groove;
     
  }
   .p2
  {
     
      width:63%;
      height:570px;
      margin-left:34%;
      border-style:groove;
      padding:20px;
     
  }
  .container1
  {
      border-style:outset;
     float:left;
     padding:20px;
     margin-left:3%;
  }
   .container2
  {
     border-style:outset;
      float:left;
      padding:20px;
      margin-left:3%;
  }
   input[type=text],input[type=number],input[type=date]
      {
            width:100%;
           
            border:1px solid #ccc;
            padding:8px 12px;
            margin:2px 0;
            display:inline-block;
            box-sizing:border-box;
            
      }
      .b1
      {
          margin-left:10px;
          padding-top:20%;
      }
      
    .style6
    {
        font-size: large;
        color: #FF0000;
        
    }

</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 15px"></div>
    <asp:Panel ID="Panel1" runat="server" class="p1">
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
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" class="p2">
        
     <div class="container1"> 
        Name:-
         <asp:TextBox ID="txtName" runat="server" Enabled="false"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtName" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         Email:-
         <asp:TextBox ID="txtEmail1" runat="server" Enabled="false"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         Blood Group Type:-
         <asp:TextBox ID="txtBloodG1" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBloodG1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         Hospital Name And Address:-
         <asp:TextBox ID="txtHospital1" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHospital1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         
          </div>
          <div class="container2">
          Doctor Name:-
         <asp:TextBox ID="txtDr1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDr1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         Contact Name:-
         <asp:TextBox ID="txtCName1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCName1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         Contact no:-
         <asp:TextBox ID="txtNo1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNo1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
      When Required:-
             <asp:TextBox ID="txtDate1" runat="server" TextMode="Date"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
</div>

      <div class="b1">
      <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblcurrentdate" runat="server" Visible="False"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" CssClass="btn_style" ForeColor="White"  runat="server" Text="Submit" BorderStyle="Ridge" 
              Font-Bold="True" onclick="Button1_Click"  />
      </div>
    </asp:Panel>
    <div  style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; position:fixed; bottom:0;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>   
</asp:Content>
