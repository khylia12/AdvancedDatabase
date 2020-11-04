<%@ Page Title="Admin"Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AdvancedDatabase2.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <div class=container>
        <br />
        <br />
                <asp:LinkButton class="nav-link" ID="Customers" runat="server" Visible="true" OnClick="Customers_Click"> Add and Update Jewellery information</asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="Promotion" runat="server" Visible="true" OnClick="Promotion_Click"> Promotion/Demotion </asp:LinkButton>
        <br />
        <asp:LinkButton class="nav-link" ID="Salary" runat="server" Visible="true" OnClick="UpdateSalary"> Update Salary </asp:LinkButton>
        <br />
</div>
    
 </asp:Content>   
            
  