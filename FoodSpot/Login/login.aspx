<%@ Page Title="" Language="C#" MasterPageFile="~/Login/LoginMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FoodSpot.Login.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
            <img src="https://img.freepik.com/free-vector/delivery-service-with-masks-concept_52683-36955.jpg?w=1060&t=st=1675321011~exp=1675321611~hmac=8f724587144c8ce9e8e2403bd59bfd3179708a19bc40d74839e8234693b7e2c6" alt="Blog" style="height:400px; width:620px; margin-left: -150px">
       

     
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card">
            <div class="card-body py-5 px-md-5">
              <form>
                  <div>
                  <asp:Label ID="Label1" runat="server" Text="Log In" Font-Size="XX-Large"></asp:Label>
                  </div>
                

                  <br />

                <!-- Email input -->
                <div class="form-outline mb-4">
             
                    <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
                     <asp:Label ID="email" class="form-label"  runat="server" Text="E-Mail"></asp:Label>


                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                
                    <asp:TextBox ID="txtpassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:Label ID="Password" class="form-label" runat="server" Text="Password"></asp:Label>

                </div>


                <!-- Submit button -->
            

                  <div> 
                      <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block mb-4" OnClick="Button1_Click" style="height: 50px;Width:100px;margin-left:172px"  Text="Log In" />
                      <asp:Label ID="label" runat="server" Text="label" Visible="False"></asp:Label></div>
               
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</section>
    </asp:Content>


