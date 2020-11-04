<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="AdvancedDatabase2.Promotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Promotion/Demotion</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-3">
                        <label>Employee ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="Emp_ID" runat="server" placeholder="Jewel ID" ></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="Gobutton" Height="37px" ></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label> Employee Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="EmpType" runat="server" placeholder="Employee Type"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>DOB</label>
                        <div class="form-group">            
                            <asp:TextBox CssClass="form-control" ID="DOB" runat="server" placeholder="Date of Birth" ReadOnly="true"></asp:TextBox>                        
                        </div>
                        <label>Address</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Address" runat="server" placeholder="Address"></asp:TextBox>
                          </div>
                     </div>
                     <div class="col-md-6">
                        <label>Name</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Name" runat="server" placeholder="Name"></asp:TextBox>
                   </div>
                        </div>
                     </div>
                   
                   <div class="row">                     
                     
                       <div class="col-12">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="UPDATE" OnClick="Button3_Click" />
                     </div>
                       
                  </div>
                     </div>
                </div>
             
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
          </div>
    </div>
    </div>
</asp:Content>
