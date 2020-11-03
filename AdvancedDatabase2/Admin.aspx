<%@ Page Title="Admin"Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AdvancedDatabase2.Admin" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class=container>
        <br />
        <br />
                <asp:LinkButton class="nav-link" ID="Customers" runat="server" Visible="true" OnClick="Customers_Click"> Add and Update Jewellery information</asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="Promotion" runat="server" Visible="true" OnClick="Promotion_Click"> Promotion/Demotion </asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="Used_Items" runat="server" Visible="true" OnClick="Used_Items_Click">Employee Commission</asp:LinkButton>
        <br />
        <asp:LinkButton class="nav-link" ID="Salary" runat="server" Visible="true" OnClick="UpdateSalary"> Update Salary </asp:LinkButton>
        <br />
        <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Visible="true" OnClick="CountJew"> Count Jewellery </asp:LinkButton>
        <br />
        <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" Visible="true" OnClick="UpdInven"> Update Inventory and Add Rent </asp:LinkButton>
</div>
    
 </asp:Content>   
            
  