<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewOrder.aspx.vb" Inherits="ManagerArea_ViewOrder" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>iBroke</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="../vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../css/style.blue.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
      <form id="form1" runat="server">
    <div id="all">
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <p></p>
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <div class="login"><a href="customer-login.aspx"  class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block"></span></a></div>
                    <asp:Button ID="btn_logOut" runat="server" Text="Log Out" />
                  <asp:LoginView ID="LoginView1" runat="server">
                      <RoleGroups>
                          <asp:RoleGroup Roles="Manager">
                          </asp:RoleGroup>
                      </RoleGroups>
                  </asp:LoginView>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top bar end-->
      <!-- Login Modal-->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">Customer Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="email" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Log in</button>
                </p>
              <p class="text-center text-muted">Not registered yet?</p>
              <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to special discounts and much more!</p>
            </div>
          </div>
        </div>
      </div>
      <!-- Login modal end-->
      <!-- Navbar Start-->
      <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="../index.aspx" class="navbar-brand home"><img src="../img/ibroke.jpg" alt="Logo" width="200" height="45" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Universal - go to homepage</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item dropdown active"><a href="../index.aspx">Home</a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="index.html" class="nav-link">Option 1: Default Page</a></li>
                  </ul>
                </li>
                   <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">Orders <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="ViewOrder.aspx" class="nav-link">View all orders</a></li>
                    <li class="dropdown-item"><a href="UpdateOrder.aspx" class="nav-link">Update/Delete Orders</a></li>
                    <li class="dropdown-item"><a href="contact3.html" class="nav-link">View Orders Stats</a></li>
                  </ul>
                </li>
                 
              
                <!-- ========== FULL WIDTH MEGAMENU ==================-->
                <li class="nav-item dropdown menu-large"><a href="../TechnicanArea/technican.aspx">Technican<b class="caret"></b></a>
                </li>
                <!-- ========== FULL WIDTH MEGAMENU END ==================-->
                <!-- ========== Contact dropdown ==================-->
                <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">Contact <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="contact.html" class="nav-link">Contact option 1</a></li>
                    <li class="dropdown-item"><a href="contact2.html" class="nav-link">Contact option 2</a></li>
                    <li class="dropdown-item"><a href="contact3.html" class="nav-link">Contact option 3</a></li>
                  </ul>
                </li>
                <!-- ========== Contact dropdown end ==================-->
              </ul>
            </div>
            <div id="search" class="collapse clearfix">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
            </div>
          </div>
        </div>
      </header>
      <!-- Navbar End-->
      
      <div id="heading-breadcrumbs" class="brder-top-0 border-bottom-0">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">View Order</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                <li class="breadcrumb-item active">View Orders</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
        </br>
        </br>
      <div id="content">
        <div id="contact" class="container">
          <section class="bar pt-0">
            <div class="row">
              <div class="col-md-12">
              </div>
               
                <br />
                <br />
                <div class="col-md-12">
                <div class="heading text-center">
                  <h2>View Orders</h2>
                </div>
                    </div>
                  <div class="row" id= "form3"  >
                       <div class="col-sm-6">
                      <div class="form-group">
                        &nbsp;</div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="OrderID" DataValueField="OrderID">
                          </asp:DropDownList>
                          <asp:Button ID="Button2" runat="server" Text="View" class="btn btn-template-outlined" />
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniConnString %>" SelectCommand="SELECT [OrderID] FROM [Orders]"></asp:SqlDataSource>
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                              <Columns>
                                  <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                                  <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                                  <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                  <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                  <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                                  <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                                  <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                  <asp:BoundField DataField="Order_Status" HeaderText="Order_Status" SortExpression="Order_Status" />
                              </Columns>
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniConnString %>" SelectCommand="SELECT [First_Name], [Last_Name], [Address], [City], [County], [Postcode], [Number], [Date], [Order_Status] FROM [Orders] WHERE ([OrderID] = @OrderID)">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList1" Name="OrderID" PropertyName="SelectedValue" Type="Int32" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
&nbsp;<asp:Button ID="Button1" runat="server" Text="View All" class="btn btn-template-outlined" /><asp:Button ID="btnHide" runat="server" Text="Hide All" class="btn btn-template-outlined" />
                          <br />
                          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource3" Visible="False">
                              <Columns>
                                  <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                  <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                                  <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                                  <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                  <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                  <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                                  <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                                  <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                  <asp:BoundField DataField="Order_Status" HeaderText="Order_Status" SortExpression="Order_Status" />
                              </Columns>
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UniConnString %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
                          <br />
                        </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
&nbsp;</div>
                    </div>
                    
                    <div class="col-sm-12 text-center">
              
                        <br />
                        <br />

              
                        <br />
                        </div>
              
              </div>
                      </form>
          </section>
        </div>
      </div>
      <!-- GET IT-->
      <div class="get-it">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 text-center p-3">
              <h3>Do you want cool website like this one?</h3>
            </div>
            <div class="col-lg-4 text-center p-3">   <a href="#" class="btn btn-template-outlined-white">Buy this template now</a></div>
          </div>
        </div>
      </div>
      <!-- FOOTER -->
      <footer class="main-footer">
        <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <h4 class="h6">About Us</h4>
              <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
              <hr>
              <h4 class="h6">Join Our Monthly Newsletter</h4>
                <div class="input-group">
                  <input type="text" class="form-control">
                  <div class="input-group-append">
                    <button type="button" class="btn btn-secondary"><i class="fa fa-send"></i></button>
                  </div>
                </div>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">Blog</h4>
              <ul class="list-unstyled footer-blog-list">
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Blog post name</a></h5>
                  </div>
                </li>
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Blog post name</a></h5>
                  </div>
                </li>
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Very very long blog post name</a></h5>
                  </div>
                </li>
              </ul>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">Contact</h4>
              <p class="text-uppercase"><strong>Universal Ltd.</strong><br>13/25 New Avenue <br>Newtown upon River <br>45Y 73J <br>England <br><strong>Great Britain</strong></p><a href="contact.html" class="btn btn-template-main">Go to contact page</a>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <ul class="list-inline photo-stream">
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare2.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare3.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare3.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare2.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="copyrights">
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2018. Your company / name goes here</p>
              </div>
              <div class="col-lg-8 text-right text-center-md">
                <p>Template design by <a href="https://bootstrapious.com/free-templates">Bootstrapious Templates </a></p>
                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
      </form>
    <!-- Javascript files-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
    <script src="../vendor/jquery.counterup/jquery.counterup.min.js"> </script>
    <script src="../vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="../vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="../js/jquery.parallax-1.1.3.js"></script>
    <script src="../vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="../vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
    <script src="../https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
    <script src="../js/gmaps.js"></script>
    <script src="../js/gmaps.init.js"></script>
    <script src="../js/front.js"></script>