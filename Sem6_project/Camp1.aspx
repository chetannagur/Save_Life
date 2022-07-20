<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Camp1.aspx.cs" Inherits="Sem6_project.Camp1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

  <style type="text/css">
        .t1
        {
           margin:1%; 
           width:25%;
        }
        .d1
        {
            margin-left:5%;
            margin-right:5%;
        }
      .style6
      {
          width: 100%;
          height: 457px;
      }
      .style7
      {
          height: 192px;
      }
      .style8
      {
          height: 46px;
      }
      .style9
      {
          height: 48px;
      }
      .style10
      {
          height: 41px;
      }
      .style11
      {
          height: 38px;
      }
      .data
      {
          width:100%;
      }
      .style12
      {
          text-align: center;
      }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<div class="text-center">
    <div class="text-center">
        &nbsp<asp:Button BorderStyle="Ridge" ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Show All Camp" CssClass="btn_style" ForeColor="white" />
        &nbsp&nbsp
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ddl1" 
        DataTextField="City" DataValueField="City" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="0">
        </asp:ListItem>
    </asp:DropDownList>
    <br />
    </div>

    <asp:SqlDataSource ID="ddl1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:blooddb %>" 
        SelectCommand="SELECT [City] FROM [camp]"></asp:SqlDataSource>

</div>
<div class="d1">
    <div class="style12">
    <asp:DataList ID="DataList1" class="data" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" RepeatColumns="3" 
        RepeatDirection="Horizontal" DataSourceID="SqlDataSource1">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <br />
            <table class="style6 t1">
                <tr>
                    <td class="style11">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Image ID="Image1" runat="server" Height="170px" 
                            ImageUrl='<%# Eval("Image") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="To join camp please log in"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SeparatorStyle BorderStyle="Groove" />
    </asp:DataList>
    
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:blooddb %>" 
        SelectCommand="SELECT [Name], [Date], [Time], [Address], [City], [Image], [Contact] FROM [camp]">
    </asp:SqlDataSource>
    <div class="style12">
    <asp:DataList ID="DataList2"  class="data" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" RepeatColumns="3" 
        RepeatDirection="Horizontal" DataSourceID="SqlDataSource2">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        
        <ItemStyle BackColor="White" />
        
        <ItemTemplate>
       
 <table class="data">
                  <br />
            <table class="style6 t1">
                <tr>
                    <td class="style11">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Image ID="Image1" runat="server" Height="170px" 
                            ImageUrl='<%# Eval("Image") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="To join camp please log in"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:blooddb %>" 
        SelectCommand="SELECT [Name], [Date], [Time], [Address], [City], [Image], [Contact] FROM [camp] WHERE ([City] = @City)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="City" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

      
</div>
<div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; margin-top:15px;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>  
</asp:Content>





            