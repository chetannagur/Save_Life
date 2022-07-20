<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ViewRequest.aspx.cs" Inherits="Sem6_project.ViewRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .d1
    {
        margin-left:10%;
        margin-right:10%;
        
    }
    .dl1
    {
        width:auto;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<div class="d1">
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                Visible="False">

            </asp:DropDownList>
            <br />
    <asp:DataList ID="DataList1" CssClass="dl1" runat="server" BackColor="#CCCCCC" 
          BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
          CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
          GridLines="Both" RepeatColumns="6" RepeatDirection="Horizontal">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Blood Group:
            <asp:Label ID="BloodGLabel" runat="server" Text='<%# Eval("BloodG") %>' />
            <br />
            Hospital:
            <asp:Label ID="HospitalLabel" runat="server" Text='<%# Eval("Hospital") %>' />
            <br />
            Doctor:
            <asp:Label ID="DoctorLabel" runat="server" Text='<%# Eval("Doctor") %>' />
            <br />
            Contact Name:
            <asp:Label ID="ContactNameLabel" runat="server" 
                Text='<%# Eval("ContactName") %>' />
            <br />
            Contact Number:
            <asp:Label ID="ContactNumberLabel" runat="server" 
                Text='<%# Eval("ContactNumber") %>' />
            <br />
            Require Date:
            <asp:Label ID="RDateLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"RDate","{0:MM/dd/yyyy}") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SeparatorStyle Width="1%" />
    </asp:DataList>
         
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:blooddb %>" 
          SelectCommand="SELECT [Name], [BloodG], [Hospital], [Doctor], [ContactName], [ContactNumber], [RDate] FROM [Request] WHERE ([RDate] &gt; @RDate)">
          <SelectParameters>
              <asp:ControlParameter ControlID="DropDownList1" DbType="Date" Name="RDate" 
                  PropertyName="SelectedValue" />
          </SelectParameters>
      </asp:SqlDataSource>
         
</div>
    <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; margin-top:15px;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>   
</asp:Content>
