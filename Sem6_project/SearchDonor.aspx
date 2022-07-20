<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SearchDonor.aspx.cs" Inherits="Sem6_project.SearchDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Search Donor
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
      
      
  }
  
    .style6
    {
        font-size: medium;
        color: #FF0000;
    }
    .style7
    {
        font-size: medium;
        color: #FF3300;
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
        <div class="d1">
             <strong><span class="style7">Choose Your City/ Nearest City:-</span></strong>
            <asp:DropDownList ID="ddcity" runat="server" AutoPostBack="True" 
                 DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City">
            </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:blooddb %>" 
                 SelectCommand="SELECT DISTINCT [City] FROM [Registration]"></asp:SqlDataSource>
            <br />
            <br />
             <strong><span class="style6">Choose Blood Group:-</span></strong>
            <asp:DropDownList ID="ddbg" runat="server" AutoPostBack="True" 
                 DataSourceID="SqlDataSource2" DataTextField="BloodG" DataValueField="BloodG">
            </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:blooddb %>" 
                 SelectCommand="SELECT DISTINCT [BloodG] FROM [Registration]"></asp:SqlDataSource>
        </div>
    
           
           <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
               AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Email" 
               DataSourceID="SqlDataSource3" Width="98%" PageSize="5" style="margin-left:1%;" >

               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                   <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                       SortExpression="Email" />
                   <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                       SortExpression="Mobile" />
                   <asp:BoundField DataField="BloodG" HeaderText="BloodG" 
                       SortExpression="BloodG" />
                   <asp:BoundField DataField="Address" HeaderText="Address" 
                       SortExpression="Address" />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
               </Columns>
               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"  />
               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
               <SortedAscendingCellStyle BackColor="#FDF5AC" />
               <SortedAscendingHeaderStyle BackColor="#4D0000" />
               <SortedDescendingCellStyle BackColor="#FCF6C0" />
               <SortedDescendingHeaderStyle BackColor="#820000" />

           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
               ConnectionString="<%$ ConnectionStrings:blooddb %>" 
               SelectCommand="SELECT [Name], [Email], [Mobile], [BloodG], [Address], [City] FROM [Registration] WHERE (([City] = @City) AND ([BloodG] = @BloodG))">
               <SelectParameters>
                   <asp:ControlParameter ControlID="ddcity" Name="City" 
                       PropertyName="SelectedValue" Type="String" />
                   <asp:ControlParameter ControlID="ddbg" Name="BloodG" 
                       PropertyName="SelectedValue" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
      
    </asp:Panel>
    <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; margin-top:15px;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>   
 
</asp:Content>
