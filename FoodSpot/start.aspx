<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start.aspx.cs" Inherits="FoodSpot.start" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>     <meta charset="utf-8">
        <title>Burger King - Food Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description"></title>  

        <link rel="stylesheet" type="text/css" href="style.css" /> 


        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

   
</head>
<body>
    <form id="form1" runat="server"><div class="navbar navbar-expand-lg bg-light navbar-light">
            <div class="container-fluid">
                <a href="index.html" class="navbar-brand">Food<span>Spot</span></a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="Home.aspx" class="nav-item nav-link active">Home</a>                     
                        <a href="feature.html" class="nav-item nav-link">Sign Up</a>
                       <a href="Login/login.aspx" class="nav-item nav-link">Log In</a>   
                        
                            </div>
                        </div>                
                    </div>
                </div>

<div>         
    <div >
        <div class="food">      
               
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FBAF32" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
               
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="8">


            <ItemTemplate><div class="container">
                   <div class="row align-items-center">
           
                    <div class="col-md-12">
                        <div class="food-item">
                            <i class="flaticon-burger"></i>
                            <h2><%# Eval("Rest_Name") %></h2>
                            <p>
                            <%# Eval("Rest_Location") %>
                            </p>
                            <%# Eval("Available_Time")%>

                             </p>      
                            <p><asp:HiddenField ID="hfield" runat="server" Value='<%# Eval("Rest_Id")%>'  /></p>
                            &nbsp;<ItemTemplate>
                                <p>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="link" OnClick="LinkButton1_Click">view menu</asp:LinkButton>
                            </p>  </ItemTemplate>
                           
                             
                         
                        </div>
                    </div>
                </div>
                 </div>
            </ItemTemplate> 
               
            </asp:DataList>


                    </div>
    </div>
                          <!-- Footer Start -->
                                <div class="footer">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="footer-contact">
                                                            <h2>Our Address</h2>
                                                            <p><i class="fa fa-map-marker-alt"></i>123 Street, New York, USA</p>
                                                            <p><i class="fa fa-phone-alt"></i>+012 345 67890</p>
                                                            <p><i class="fa fa-envelope"></i>info@example.com</p>
                                                            <div class="footer-social">
                                                                <a href=""><i class="fab fa-twitter"></i></a>
                                                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                                                <a href=""><i class="fab fa-youtube"></i></a>
                                                                <a href=""><i class="fab fa-instagram"></i></a>
                                                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="footer-link">
                                                            <h2>Quick Links</h2>
                                                            <a href="">Terms of use</a>
                                                            <a href="">Privacy policy</a>
                                                            <a href="">Cookies</a>
                                                            <a href="">Help</a>
                                                            <a href="">FQAs</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="footer-newsletter">
                                                    <h2>Newsletter</h2>
                                                    <p>
                                                        Lorem ipsum dolor sit amet elit. Quisque eu lectus a leo dictum nec non quam. Tortor eu placerat rhoncus, lorem quam iaculis felis, sed lacus neque id eros.
                                                    </p>
                                                    <div class="form">
                                                        <input class="form-control" placeholder="Email goes here">
                                                        <button class="btn custom-btn">Submit</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="copyright">
                                        <div class="container">
                                            <p>Copyright &copy; <a href="#">Your Site Name</a>, All Right Reserved.</p>
                                            <p>Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Footer End -->

</div> 
              
</form>
</body>
</html>