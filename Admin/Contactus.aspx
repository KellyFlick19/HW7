<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Contactus.aspx.vb" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>


</asp:Content>

