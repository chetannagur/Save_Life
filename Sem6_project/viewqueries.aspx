<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="viewqueries.aspx.cs" Inherits="Sem6_project.viewqueries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.d1
{
    height:10px;
}
.d2
{
    width:80%;
   
    margin-left:10%;
    margin-right:10%;
    border-style:groove;
    
}
.g1
{
    width:100%;
            text-align: center;
        }

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d1"></div>
<div class="d2">
    <asp:GridView ID="GridView1" CssClass="g1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="contact" HeaderText="contact" 
                SortExpression="contact" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="comment" HeaderText="Comment" 
                SortExpression="comment" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="query" HeaderText="Query" SortExpression="query" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:blooddb %>" 
        SelectCommand="SELECT [name], [lastname], [email], [contact], [comment], [query], [zip] FROM [contact]">
    </asp:SqlDataSource>

</div>

</asp:Content>
