<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Kelly's NFL Players Website
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="Sql_nflplayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_flick_nflplayers %>" DeleteCommand="DELETE FROM [flick_nflplayers] WHERE [PlayerID] = @PlayerID" InsertCommand="INSERT INTO [flick_nflplayers] ([FirstName], [LastName], [Team], [Position], [Weight], [Height], [Experience], [College]) VALUES (@FirstName, @LastName, @Team, @Position, @Weight, @Height, @Experience, @College)" SelectCommand="SELECT * FROM [flick_nflplayers]" UpdateCommand="UPDATE [flick_nflplayers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Team] = @Team, [Position] = @Position, [Weight] = @Weight, [Height] = @Height, [Experience] = @Experience, [College] = @College WHERE [PlayerID] = @PlayerID">
            <DeleteParameters>
                <asp:Parameter Name="PlayerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Team" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Weight" Type="Int32" />
                <asp:Parameter Name="Height" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="College" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Team" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Weight" Type="Int32" />
                <asp:Parameter Name="Height" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="College" Type="String" />
                <asp:Parameter Name="PlayerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PlayerID" DataSourceID="Sql_nflplayers" HorizontalAlign="Center" BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" CellSpacing="3">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:HyperLinkField DataNavigateUrlFields="PlayerID" DataNavigateUrlFormatString="playerdetails.aspx?PlayerID={0}" HeaderText="Details" Text="Select" >
                <ControlStyle ForeColor="Black" />
                </asp:HyperLinkField>
            </Columns>
            <FooterStyle BackColor="Yellow" />
            <HeaderStyle BorderStyle="Solid" />
            <RowStyle BorderStyle="Solid" />
        </asp:GridView>
</asp:Content>

