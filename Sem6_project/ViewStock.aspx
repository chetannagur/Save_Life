<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ViewStock.aspx.cs" Inherits="Sem6_project.ViewStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server"> View Stock
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<style type="text/css">
        .p1
  {
      float:left;
      width:31%;
      height:400px;
      margin-left:2%;
      border-style:groove;
     
  }
     .p2
  {
     
      width:63%;
      height:400px;
      margin-left:34%;
      border-style:groove;
     
  }
  .d1
  {
     
    
      padding:20px;
      margin-top:1%;
      margin-left:41%;
  }
  
    .style7
    {
        font-size: medium;
        color: #FF3300;
    }
    .style8
    {
        color: #FF0000;
        font-size: x-large;
       
    }
    .d2
    {
        margin-left: 82px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="height: 15px"></div>
    <asp:Panel ID="Panel1" runat="server" class="p1">
       <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
            DynamicHorizontalOffset="2" Font-Names="Constantia" Font-Size="Larger" 
            ForeColor="Blue" Orientation="Vertical" StaticSubMenuIndent="10px" 
            Width="100%" RenderingMode="Table" 
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
        <div class="text-center">
            <span class="style8"><strong>View Stock </strong></span>
        </div>
       
        
        <br />
        <br />
        <div class="d1">
             <strong><span class="style7">Choose City:-</span></strong>
            <asp:DropDownList ID="ddcity" runat="server" AutoPostBack="True" 
                 DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City" >
            </asp:DropDownList>
            
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:blooddb %>" 
                 SelectCommand="SELECT [city] FROM [Stock1]"></asp:SqlDataSource>
            
            <br />
            <br />
            </div>
            <div class="d2">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                 GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
                 Width="739px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ap" HeaderText="A+" 
                        SortExpression="ap" />
                    <asp:BoundField DataField="an" HeaderText="A-" 
                        SortExpression="an" />
                    <asp:BoundField DataField="bp" HeaderText="B+" 
                        SortExpression="bp" />
                    <asp:BoundField DataField="bn" HeaderText="B-" 
                        SortExpression="bn" />
                    <asp:BoundField DataField="abp" HeaderText="AB+" 
                        SortExpression="abp" />
                    <asp:BoundField DataField="abn" HeaderText="AB-" 
                        SortExpression="abn" />
                    <asp:BoundField DataField="op" HeaderText="O+" 
                        SortExpression="op" />
                    <asp:BoundField DataField="one" HeaderText="O-" 
                        SortExpression="one" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:blooddb %>" 
                 
                    
                    SelectCommand="SELECT [ap], [an], [bp], [bn], [abp], [abn], [op], [one] FROM [Stock1] WHERE ([city] = @city)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="ddcity" Name="city" 
                         PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </div>
    
        
           
      
    </asp:Panel>
    <div style="height: 5px"></div>
     <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>
</asp:Content>
