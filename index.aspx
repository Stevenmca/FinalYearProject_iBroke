<!DOCTYPE html>
<script runat="server">

</script>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>iBroke</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.red.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/ibroke.jpg" type="image/x-icon">
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
        <br />
        <br />
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <p>Contact us on +7935686188 or ibroke@hotmail.com</p>
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <div class="login"><a href="customer-login.aspx"  class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">Sign In</span></a><a href="customer-register.aspx" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Sign Up</span></a></div>
                <ul class="social-custom list-inline">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
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
              <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and gives you access to track your repair, purchase products and much more</p>
            </div>
          </div>
        </div>
      </div>
      <!-- Login modal end-->
      <!-- Navbar Start-->
      <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="index.aspx" class="navbar-brand home"><img src="img/ibroke.jpg" alt="Logo" width="200" height="45" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Universal - go to homepage</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                <li><a href="index.aspx">Home <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="index.html" class="nav-link">Option 1: Default Page</a></li>
                  </ul>
                </li>
                <li><a href="SerRequest.aspx">Service Request</a>
                </li>
                <li class="nav-item dropdown"><a href="ShopiPhone.aspx">Shop</a>
                </li>
                  <li><a href="SellDevice.aspx">Sell Your Device</a>
                </li>
                <!-- ========== FULL WIDTH MEGAMENU ==================-->
                 <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">Track <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="Track.aspx" class="nav-link">Track your Repair</a></li>
                      <li class="dropdown-item"><a href="TrackOrder.aspx" class="nav-link">Track your Order</a></li>
                  </ul>
                </li>
                   
                <!-- ========== FULL WIDTH MEGAMENU END ==================-->
                <!-- ========== Contact dropdown ==================-->
                <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">Contact <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="contactus.aspx" class="nav-link">Contact Us</a></li>
                      <li class="dropdown-item"><a href="FAQ.aspx" class="nav-link">FAQ</a></li>
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
      
      <section style="background: url('img/iphonerepair.jpg') center center repeat; background-size: cover;" class="bar background-white relative-positioned">
        <div class="container">
          <!-- Carousel Start-->
          <div class="home-carousel">
            <div class="dark-mask mask-primary"></div>
            <div class="container">
              <div class="homepage owl-carousel">
                <div class="item">
                  <div class="row">
                    <div class="col-md-5 text-right">
                      
                      <h1>Phone, Tablet and Computer Repairs</h1>
                      <p>Fast. Efficient. Service.<br>Experienced Technicians. <br> Full Warranty.</p>
                    </div>
                    <div class="col-md-7"><img src="img/cr.gif" alt="" class="img-fluid"></div>
                  </div>
                </div>
                <div class="item">
                  <div class="row">
                    <div class="col-md-7 text-center"><img src="img/unlocked-smartphones.jpg" alt="" class="img-fluid"></div>
                    <div class="col-md-5">
                      <h2>Mobile Phone Unlocking</h2>
                      <ul class="list-unstyled">
                        <li>Any Device</li>
                        <li>Any Network</li>
                        <li>Any Time</li>
                        <li>Prices Start From £19.99</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="row">
                    <div class="col-md-5 text-right">
                      <h1>Track Repair</h1>
                      <ul class="list-unstyled">
                        <li>Quick and Easy service</li>
                        <li>Keep up to date on progress of repair</li>
                        <li></li>
                        <li>7 preprepared colour variations</li>
                      </ul>
                    </div>
                    <div class="col-md-7"><img src="img/cr.gif" alt="" class="img-fluid"></div>
                  </div>
                </div>
                <div class="item">
                  <div class="row">
                    <div class="col-md-7"><img src="img/ap.png" alt="" class="img-fluid"></div>
                    <div class="col-md-5">
                      <h1>Geniune Accessories in stock</h1>
                      <ul class="list-unstyled">
                        <li>7 preprepared colour variations.</li>
                        <li>Easily to change fonts</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Carousel End-->
        </div>
      </section>
	   <section class="bg-white bar">
        <div class="container">
          <div class="heading text-center">
            <h2>Check out our repairs</h2>
          </div>
          <p class="lead">iBroke now brings you the best and genuine phone, tablet and computer repairs at a very cost-effective price. The different repairs include battery repairs,screen replacement, dock replacement, fresh installs, and replacement to the most complicated issues like water damages and much more. Click on your device to view more:</p>
          <div class="row">
            <div class="col-lg-3">
              <div class="home-blog-post">
                <div class="image"><img src="img/iphonex.png" alt="..." class="img-fluid">
                  <div class="overlay d-flex align-items-center justify-content-center"><a href="#" class="btn btn-template-outlined-white"><i class="fa fa-chain"> </i> View More</a></div>
                </div>
                <div class="text">
                  <h4><a href="#">iPhone </a></h4>
                 
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="home-blog-post">
                <div class="image"><img src="img/samsung8.png" alt="..." class="img-fluid">
                  <div class="overlay d-flex align-items-center justify-content-center"><a href="#" class="btn btn-template-outlined-white"><i class="fa fa-chain"> </i> View More</a></div>
                </div>
                <div class="text">
                  <h4><a href="#">Samsung</a></h4>
                 
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="home-blog-post">
                <div class="image"><img src="img/ipad.png" alt="..." class="img-fluid">
                  <div class="overlay d-flex align-items-center justify-content-center"><a href="#" class="btn btn-template-outlined-white"><i class="fa fa-chain"> </i> View More</a></div>
                </div>
                <div class="text">
                  <h4><a href="#">iPad</a></h4>
                  
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="home-blog-post">
                <div class="image"><img src="img/imac.png" alt="..." class="img-fluid">
                  <div class="overlay d-flex align-items-center justify-content-center"><a href="#" class="btn btn-template-outlined-white"><i class="fa fa-chain"> </i> View More</a></div>
                </div>
                <div class="text">
                  <h4><a href="#">Computer </a></h4>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
	  
	  
      <div class="get-it">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 text-center p-3">
              <h3></h3>
            </div>
            <div></div>
          </div>
        </div>
      </div>
	 
      <section class="bar background-pentagon no-mb text-md-center">
        <div class="container">
          <div class="heading text-center">
            <h2>Testimonials</h2>
          </div>
          <p class="lead">We have worked with many clients and we always like to hear they come out from the cooperation happy and satisfied. Have a look what our clients said about us.</p>
          <!-- Carousel Start-->
          <ul class="owl-carousel testimonials list-unstyled equal-height">
            <li class="item">
              <div class="testimonial d-flex flex-wrap">
                <div class="text">
                  <p>Absolutely best of the best customer service.
Iphone decided to crap itself one saturday morning, colin tried to help me to get it on again & in failing that took a look at it himself. Sent it off to apple for me, provided me with a loan phone to tie me over for only a tenner per wk ( only needed 1 wk) and one wk later a brand new iphone lands to ibroke and colin let me know as soon as it landed in the door. He wiped the loan phone and showed me so I knew none of my things were left on it. All done with no hassle or bother, def couldn't ask for better!! That and the lads have fixed endless screens for us and they all come back perfect !! Highly recommended</p>
                </div>
                <div class="bottom d-flex align-items-center justify-content-between align-self-end">
                  <div class="icon"><i class="fa fa-quote-left"></i></div>
                  <div class="testimonial-info d-flex">
                    <div class="title">
                      <h5>John McIntyre</h5>
                      
                    </div>
                    <div class="avatar"><img alt="" src="img/em1.png" class="img-fluid"></div>
                  </div>
                </div>
              </div>
            </li>
            <li class="item">
              <div class="testimonial d-flex flex-wrap">
                <div class="text">
                  <p>Great customer service and excellent quality screen! I’ve had my phone fixed before and the screen was never as good quality. It came with a tempered glass screen protector as well. Very fast service too! If needed, I would definitely use i-Broke again. Thank you!</p>
                </div>
                <div class="bottom d-flex align-items-center justify-content-between align-self-end">
                  <div class="icon"><i class="fa fa-quote-left"></i></div>
                  <div class="testimonial-info d-flex">
                    <div class="title">
                      <h5>Kelly Smith</h5>
                      
                    </div>
                    <div class="avatar"><img alt="" src="img/em2.png" class="img-fluid"></div>
                  </div>
                </div>
              </div>
            </li>
            <li class="item">
              <div class="testimonial d-flex flex-wrap">
                <div class="text">
                  <p>Couldn’t recommend these guys highly enough!! Phone packed in.. they had the problem figured out and the phone fixed and back in my hand within the hour.. really reasonably priced and friendly service. Great to have a service like this on your doorstep!!!</p>
                  
                </div>
                <div class="bottom d-flex align-items-center justify-content-between align-self-end">
                  <div class="icon"><i class="fa fa-quote-left"></i></div>
                  <div class="testimonial-info d-flex">
                    <div class="title">
                      <h5>Mark Glass</h5>
                      
                    </div>
                    <div class="avatar"><img alt="" src="img/em3.png" class="img-fluid"></div>
                  </div>
                </div>
              </div>
            </li>
            <li class="item">
              <div class="testimonial d-flex flex-wrap">
                <div class="text">
                  <p>Just been to ibroke store to get them to look at an iPhone 5 screen that wasn’t responding to touch,it was replaced in February this year but after all these months it was replaced because of being faulty so as Colin says a warranty is a warranty,couldn’t recommend them enough.</p>
                </div>
                <div class="bottom d-flex align-items-center justify-content-between align-self-end">
                  <div class="icon"><i class="fa fa-quote-left"></i></div>
                  <div class="testimonial-info d-flex">
                    <div class="title">
                      <h5>Angela McCloskey</h5>
                      
                    </div>
                    <div class="avatar"><img alt="" src="img/em4.png" class="img-fluid"></div>
                  </div>
                </div>
              </div>
            </li>
            <li class="item">
              <div class="testimonial d-flex flex-wrap">
                <div class="text">
                  <p>Honestly can’t get better colin and his team goes above and beyond for everyone and I couldn’t recommend them any more.</p>
                </div>
                <div class="bottom d-flex align-items-center justify-content-between align-self-end">
                  <div class="icon"><i class="fa fa-quote-left"></i></div>
                  <div class="testimonial-info d-flex">
                    <div class="title">
                      <h5>Nuala Donaghy</h5>
                     
                    </div>
                    <div class="avatar"><img alt="" src="img/em5.png" class="img-fluid"></div>
                  </div>
                </div>
              </div>
            </li>
          </ul>
          <!-- Carousel End-->
        </div>
      </section>
      <section style="background: url(img/background.jpg) center top no-repeat; background-size: cover;" class="bar no-mb color-white text-center bg-fixed relative-positioned">
         <div class="container">
            <div class="row showcase text-center">
              <div class="col-md-3 col-sm-6">
                <div class="item">
                  <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-align-justify"></i></div>
                  <h4><span class="h1 counter">14080</span><br>Repairs</h4>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="item">
                  <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-users"></i></div>
                  <h4><span class="h1 counter">10008</span><br>Satisfied Customers</h4>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="item">
                  <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-copy"></i></div>
                  <h4><span class="h1 counter">120</span><br>Projects</h4>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="item">
                  <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-font"></i></div>
                  <h4><span class="h1 counter">223</span><br>Magazines and Brochures</h4>
                </div>
              </div>
            </div>
          </div>
      </section>
     
	   <section class="bar background-white">
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-4 col-md-6">
              <div class="box-simple">
                <div class="icon-outlined"><i class="fa fa-desktop"></i></div>
                <h3 class="h4">Webdesign</h3>
                <p>Fifth abundantly made Give sixth hath. Cattle creature i be don't them behold green moved fowl Moved life us beast good yielding. Have bring.</p>
           
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="box-simple">
                <div class="icon-outlined"><i class="fa fa-print"></i></div>
                <h3 class="h4">iPhone</h3>
                <p>Advantage old had otherwise sincerity dependent additions. It in adapted natural hastily is justice. Six draw you him full not mean evil. Prepare garrets it expense windows shewing do an.</p>
              </div>
            </div>
        
       
            <div class="col-lg-4 col-md-6">
              <div class="box-simple">
                <div class="icon-outlined"><i class="fa fa-envelope-o"></i></div>
                <h3 class="h4">Email Marketing</h3>
                <p>Advantage old had otherwise sincerity dependent additions. It in adapted natural hastily is justice. Six draw you him full not mean evil. Prepare garrets it expense windows shewing do an.</p>
              </div>
            </div>
           
      </section>
      <section class="bar bg-gray">
        <div class="container">
          <div class="heading text-center">
            <h2>Our Clients</h2>
          </div>
          <ul class="list-unstyled owl-carousel customers no-mb">
            <li class="item"><img src="img/apple.jpg" alt="" class="img-fluid"></li>
            <li class="item"><img src="img/samsung.png" alt="" class="img-fluid"></li>
            <li class="item"><img src="img/huawei.png" alt="" class="img-fluid"></li>
            <li class="item"><img src="img/htc.png" alt="" class="img-fluid"></li>
            <li class="item"><img src="img/lg.png" alt="" class="img-fluid"></li>
            <li class="item"><img src="img/google.png" alt="" class="img-fluid"></li>
          </ul>
        </div>
      </section>
      <!-- GET IT-->
      <div class="get-it">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 text-center p-3">
              <h3>Want a update on your repair?</h3>
            </div>
            <div class="col-lg-4 text-center p-3">   <a href="track.aspx" class="btn btn-template-outlined-white">Track repair now</a></div>
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
    <!-- Javascript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
    <script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
    <script src="js/front.js"></script>
      </form>
  </body>
</html>