<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_flick_nflplayers %>" SelectCommand="SELECT * FROM [flick_nflplayers]"></asp:SqlDataSource>
    <asp:TextBox ID="tbsearch" runat="server" Height="19px" Width="203px"></asp:TextBox> &nbsp; &nbsp;
    <asp:Button ID="btnsearch" runat="server" Text="Search" Height="26px" Width="105px" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PlayerID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="269px" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" CellSpacing="3" Height="374px">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
        </Columns>
     <FooterStyle BackColor="Yellow" />
     <HeaderStyle BorderStyle="Solid" BackColor="Yellow" />
     <RowStyle BorderStyle="Solid" BackColor="Yellow" />
    </asp:GridView>
</asp:Content>

