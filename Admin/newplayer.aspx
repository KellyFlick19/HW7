<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="Admin_newplayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> New Player
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
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
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PlayerID" DataSourceID="Sql_nflplayers" DefaultMode="Insert" HorizontalAlign="Center">
            <EditItemTemplate>
               
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>

                        <td style="text-align:right;">
                            First Name:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>' />

                        </td>
                    </tr>

                    <tr>

                        <td style="text-align:right;">
                            Last Name:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>' />

                        </td>
                    </tr>

                    <tr>

                        <td style="text-align:right;">
                            Team:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Team") %>' />

                        </td>
                    </tr>
                     <tr>

                        <td style="text-align:right;">
                           Position:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Position") %>' />

                        </td>
                    </tr>
                     <tr>

                        <td style="text-align:right;">
                           Weight:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Weight") %>' />

                        </td>
                    </tr>
                    <tr>

                        <td style="text-align:right;">
                           Height:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Height") %>' />

                        </td>
                    </tr>
                    <tr>

                        <td style="text-align:right;">
                           Experience:

                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Experience") %>' />

                        </td>
                    </tr>
                    <tr>

                        <td style="text-align:right;">
                           College:

                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("College") %>' />

                        </td>
                    </tr>
                    <tr>

                        <td style="text-align:right;">
                           <asp:Button ID="btn_Insert" runat="server" CausesValidation="true" CommandName="Insert" Text="Insert" />

                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="btn_cancelInsert" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel" />

                        </td>
                    </tr>
                </table>

              
           
            </InsertItemTemplate>
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:FormView>
  
</asp:Content>

