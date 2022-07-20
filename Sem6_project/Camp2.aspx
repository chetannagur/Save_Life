<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Camp2.aspx.cs" Inherits="Sem6_project.Camp2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         .t1
        {
           margin:1% 0% 1% 1%; 
           width:25%;
        }
        .d1
        {
            margin-left:5%;
            margin-right:5%;
        }
      .style6
      {
          width: -2147483648%;
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
             text-align: center;
         }
         .style12
         {
             width: 224px;
         }
         .style13
         {
             height: 48px;
             text-align: center;
         }
         .style14
         {
             height: 46px;
             text-align: center;
         }
         .style15
         {
             height: 192px;
             text-align: center;
         }
         .style16
         {
             height: 41px;
             text-align: center;
         }
         .style17
         {
             height: 38px;
             text-align: center;
         }
         .style18
         {
             text-align: center;
         }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<div class="text-center">
    <div class="text-center">
    <asp:Button ID="Button2" BorderStyle="Ridge" CssClass="btn_style" ForeColor="White" runat="server" Text="Show All Camp" 
        onclick="Button2_Click" />&nbsp&nbsp&nbsp
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
    <asp:DataList ID="DataList1" class="data" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" RepeatColumns="3" 
        RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" 
        onitemcommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <br />
            <table class="style6 t1" align="center">
                <tr>
                    <td class="style17">
                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <asp:Label ID="lbltime" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Image ID="img1" runat="server" Height="170px" 
                            ImageUrl='<%# Eval("Image") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        <asp:Label ID="lbladd" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="lblcity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="lblcont" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        <asp:Button BorderStyle="Ridge" ID="Button1" CssClass="btn_style" ForeColor="White" runat="server" Text="Join" CommandName="join" CommandArgument='<%# Eval("Name") %>'  />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SeparatorStyle BorderStyle="Groove" />
    </asp:DataList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:blooddb %>" 
        SelectCommand="SELECT [Name], [Date], [Time], [Address], [City], [Image], [Contact] FROM [camp]">
    </asp:SqlDataSource>
    <asp:DataList ID="DataList2"  class="data" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" RepeatColumns="3" 
        RepeatDirection="Horizontal" DataSourceID="SqlDataSource2">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        
        <ItemStyle BackColor="White" />
        
        <ItemTemplate>
       
 <table class="data">
                  <caption>
                      <br />
                      <table class="style12">
                          <tr>
                              <td class="style11">
                                  <asp:Label ID="lblname2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td class="style11">
                                  <asp:Label ID="lbldate2" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td class="style10">
                                  <asp:Label ID="lbltime2" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td class="style7">
                                  <asp:Image ID="img2" runat="server" Height="170px" 
                                      ImageUrl='<%# Eval("Image") %>' Width="150px" />
                              </td>
                          </tr>
                          <tr>
                              <td class="style8">
                                  <asp:Label ID="lbladd2" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td class="style9">
                                  <asp:Label ID="lblcity2" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td class="style9">
                                  <asp:Label ID="lblcont2" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button BorderStyle="Ridge" CssClass="btn_style" ForeColor="White" ID="Button3" runat="server" Text="Join" />
                              </td>
                          </tr>
                      </table>
                  </caption>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
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
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300; bottom:0;" >
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div> 
</asp:Content>
