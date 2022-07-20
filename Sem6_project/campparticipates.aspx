<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="campparticipates.aspx.cs" Inherits="Sem6_project.campparticipates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.d1
{
    height:5px;
}
.d2
{
    width:30%;
    padding-left:12.5%;
    margin-left:33%;
    border-style:groove;
    
}
.d3
{
    width:60%;
    margin-left:18%;
    margin-right:25%;
    border-style:groove;
    
}

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div > 
   <div class="d1">
   </div>
<div class="d2">
<br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem Enabled="true" Text="Select Year" Value="-1"></asp:ListItem>
    <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
    <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
    <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
    <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
    <asp:ListItem Text="2026" Value="2026"></asp:ListItem>
    <asp:ListItem Text="2027" Value="2027"></asp:ListItem>
    <asp:ListItem Text="2028" Value="2028"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataTextField="cname" DataValueField="cname" 
        AutoPostBack="True" >
    </asp:RadioButtonList>
</div>
<br />
<div class="d3">
    <asp:GridView  ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cname" HeaderText="Camp Name" 
                SortExpression="cname" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="contact" HeaderText="Contact" 
                SortExpression="contact" />
            <asp:BoundField DataField="uname" HeaderText="User Name" 
                SortExpression="uname" />
            <asp:BoundField DataField="uemail" HeaderText="User Email" 
                SortExpression="uemail" />
            <asp:BoundField DataField="uadd" HeaderText="User Address" 
                SortExpression="uadd" />
            <asp:BoundField DataField="ucontact" HeaderText="User Contact" 
                SortExpression="ucontact" />
            <asp:BoundField DataField="boodg" HeaderText="Blood Group" 
                SortExpression="boodg" />
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
        SelectCommand="SELECT [cname], [date], [address], [city], [contact], [uname], [uemail], [uadd], [ucontact], [boodg] FROM [joincamp] WHERE ([cname] = @cname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="cname" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</div>
</asp:Content>
