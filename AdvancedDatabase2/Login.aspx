<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AdvancedDatabase2.Login" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div align="center">
  <table style="height: 445px; width: 536px; background-color: #FFCCFF;" >
        <tr>
            <td colspan="2" style="background-color:white;font-family:'Palatino Linotype';text-align: center"><B>Login Page</B></td>
        </tr>
        <tr style="width:50%">
            <td class="auto-style1" align="center"><b> Email ID</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="53px" Width="227px" BackColor="#FFCCFF" TextMode="Email" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" align="center"><b>Password</b> </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="53px" Width="227px" BackColor="#FFCCFF" TextMode="Password">
</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">

                <asp:Button ID="Button1" runat="server" Height="49px" Text="Login" Width="132px" BackColor="#FFCCFF" OnClick="Button1_Click" Font-Bold="True" Font-Size="Large" />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</div>      
   
</asp:Content>


