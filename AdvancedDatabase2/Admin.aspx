<%@ Page Title="Admin"Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AdvancedDatabase2.Admin" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class=container>
        <h3> Admin Procedure List </h3>
        <br />
        <br />
                <h4 style="font-family:'Times New Roman';color:red">PROCEDURES</h4>
                <asp:LinkButton class="nav-link" ID="Customers" runat="server" Visible="true" OnClick="Customers_Click"> Add and Update Jewellery information</asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="Promotion" runat="server" Visible="true" OnClick="Promotion_Click"> Promotion/Demotion </asp:LinkButton>
   <br />
        <asp:LinkButton class="nav-link" ID="Salary" runat="server" Visible="true" OnClick="UpdateSalary"> Update Salary </asp:LinkButton>
        <br />
      <h4 style="font-family:'Times New Roman';color:red">TRANSACTION</h4>
        <asp:LinkButton class="nav-link" ID="Payment" runat="server" Visible="true" OnClick="Payment_Click"> Employee Payment $ Transfer </asp:LinkButton>

        <h4 style="font-family:'Times New Roman';color:red">FUNCTIONS</h4>
        <asp:LinkButton class="nav-link" ID="M_Sales" runat="server" Visible="true" OnClick="Sales_Click">Employee Who Made The Most Sales</asp:LinkButton>
        <br />
        <asp:LinkButton class="nav-link" ID="CusRent" runat="server" Visible="true" OnClick="CustRent_Click"> Customer That Rented The Most Jewelry </asp:LinkButton>
</div>
    
 </asp:Content>   
            
  