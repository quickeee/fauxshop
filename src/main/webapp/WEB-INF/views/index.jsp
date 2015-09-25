<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="description" content="responsive clothing store template">
    <meta name="author" content="afriq yasin ramadhan">
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.png" />">    

    <title>Faux Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="<c:url value="/resources/js/html5shiv.js" />"></script>
      <script src="<c:url value="/resources/js/respond.min.js" />"></script>
    <![endif]-->
  </head>

  <body>

    <!-- begin:navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Faux Shop-navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>

        <div class="collapse navbar-collapse" id="Faux Shop-navbar">
          <ul class="nav navbar-nav navbar-right">
            <li><a class="disabled">CURRENCY</a></li>
            <li class="active"><a href="#">USD</a></li>
            <li><a href="#">EUR</a></li>
            <li><a href="#">IDR</a></li>
            <li class="divider-vertical"></li>
            <li class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">LANGUAGE <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">EN</a></li>
                <li><a href="#">ID</a></li>
                <li><a href="#">FR</a></li>
                <li class="divider"></li>
                <li><a href="#">IT</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>
    <!-- end:navbar -->

    <!-- begin:content -->
    <div class="container">
      <!-- begin:logo -->
      <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="logo">
            <h1><a href="index">Faux<span>shop</span> </a></h1>
            <p>Durable, Fashionable, Animal Friendly</p>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="account">
            <ul>
              <li id="your-account">
                <div class="hidden-xs">
                  <h4><a href="account">Your Account</a></h4>                
                  <c:choose>
                  	<c:when test="${pageContext.request.userPrincipal.name != null}">                  	
					<p>Welcome, ${pageContext.request.userPrincipal.name}</p>
						<c:url var="logoutAction" value="/j_spring_security_logout"></c:url>	
						<form action="${logoutAction}" method="post">
						<!-- This obviously needs to be fixed: -->
						<a href="fauxshop/j_spring_security_logout">Log Out</a>
						</form>
					</c:when>
					<c:otherwise>										
                  	<p><a href="login">Log in</a></p>
                  </c:otherwise>
                  </c:choose>
                </div>
                <div class="visible-xs">
                  <a href="login" class="btn btn-primary"><i class="fa fa-user"></i></a>
                </div>
              </li>
              <li>
                <div class="hidden-xs">
                  <h4><a href="cart">Cart</a></h4>
                  <p><strong>${cartService.getCartByUserLogin(pageContext.request.userPrincipal.name).size()} Product(s)</strong></p>
                </div>
                <div class="visible-xs">
                  <a href="cart" class="btn btn-primary"><span class="cart-item">3</span> <i class="fa fa-shopping-cart"></i></a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div> 
      <!-- end:logo -->

      <!-- begin:nav-menus -->
      <div class="row">
        <div class="col-md-12">
          <div class="nav-menus">
            <ul class="nav nav-pills">
              <li class="active"><a href="index">Home</a></li>
              <li><a href="#">Acessories</a></li>
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Mens <b class="caret"></b></a>
                <ul class="dropdown-menu" id="menu1">
                  <li>
                    <a href="categories/101">Shirts <b class="caret"></b></a>
                    <ul class="dropdown-menu sub-menu">
                      <li><a href="categories/101">Shirts</a></li>
                      <li><a href="categories/101">T-shirts</a></li>
                      <li><a href="categories/101">Polo Shirts</a></li>
                      <li><a href="categories/101">Tanktop</a></li>
                    </ul>
                  </li>
                  <li><a href="categories/100">Jacket</a></li>
                  <li><a href="categories/102">Pants</a></li>
                  <li><a href="categories/102">Boxer</a></li>
                  <li class="divider"></li>
                  <li><a href="categories/101">SweatShirts</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Womens <b class="caret"></b></a>
                <ul class="dropdown-menu" id="menu1">
                  <li><a href="#">Shirts</a></li>
                  <li><a href="#">Pants</a></li>
                  <li><a href="#">Skirts</a></li>
                </ul>
              </li>
              <li><a href="#">Edition</a></li>
              <li><a href="#">Authorized Dealer</a></li>
              <li><a href="about">About</a></li>
              <li><a href="contact">Contact</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- end:nav-menus -->

      <!-- begin:home-slider -->
      <div id="home-slider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#home-slider" data-slide-to="0" class="active"></li>
          <li data-target="#home-slider" data-slide-to="1" class=""></li>
          <li data-target="#home-slider" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img src="<c:url value="/resources/img/slider1.png"/>" alt="Faux Shop">
            
            <div class="carousel-caption hidden-xs">
              <h3>First slide label</h3>
              <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
            </div>
          </div>
          <div class="item">
            <img src="<c:url value="/resources/img/slider2.png"/>" alt="Faux Shop">
            <div class="carousel-caption hidden-xs">
              <h3>Second slide label</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
          </div>
          <div class="item">
            <img src="<c:url value="/resources/img/slider3.png"/>" alt="Faux Shop">
            <div class="carousel-caption hidden-xs">
              <h3>Third slide label</h3>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#home-slider" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="right carousel-control" href="#home-slider" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </div>
      <!-- end:home-slider -->

      <!-- begin:best-seller -->
      <div class="row">
        <div class="col-md-12">
          <div class="page-header">
            <h2>Best Seller <small>Most sold product in this month</small></h2>
          </div>
        </div>
      </div>

      <div class="row product-container">
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${leatherJacket.inventoryId}?color=${leatherJacketDetail.get(0).getColor()}"><img alt="" src="<c:url value="${leatherJacket.img}"/>"></a>
            <div class="caption">
              <h5>${leatherJacket.inventoryTxt}</h5>
              <p>$${leatherJacket.priceUsd}</p>
              <c:choose> 
	            <c:when test="${leatherJacket.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>                            
            </div>
            <div class="product-item-badge">New</div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${pleatherShirt.inventoryId}?color=${pleatherShirtDetail.get(0).getColor()}"><img alt="" src="<c:url value="${pleatherShirt.img}"/>"></a>
            <div class="caption">
              <h5>${pleatherShirt.inventoryTxt}</h5>
              <p class="product-item-price">$${pleatherShirt.priceUsd}</p>
              <c:choose> 
	            <c:when test="${pleatherShirt.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${pleatherPants.inventoryId}?color=${pleatherPantsDetail.get(0).getColor()}"><img alt="" src="<c:url value="${pleatherPants.img}"/>"></a>
            <div class="caption">
              <h5>${pleatherPants.inventoryTxt}</h5>
              <p><del>$590.00</del> $${pleatherPants.priceUsd}</p>
              <c:choose> 
	            <c:when test="${pleatherPants.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
            <div class="product-item-badge badge-sale">Sale</div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${hempShirt.inventoryId}?color=${hempShirtDetail.get(0).getColor()}"><img alt="" src="<c:url value="${hempShirt.img}"/>"></a>
            <div class="caption">
              <h5>${hempShirt.inventoryTxt}</h5>
              <p>$${hempShirt.priceUsd}</p>
              <c:choose> 
	            <c:when test="${hempShirt.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
      </div>
      <!-- end:best-seller -->

      <!-- begin:new-arrival -->
      <div class="row">
        <div class="col-md-12">
          <div class="page-header">
            <h2>New Arrival <small>New products in this month</small></h2>
          </div>
        </div>
      </div>

      <div class="row product-container">
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${leatherJacket.inventoryId}?color=${leatherJacketDetail.get(0).getColor()}"><img alt="" src="<c:url value="${leatherJacket.img}"/>"></a>
            <div class="caption">
              <h5>${leatherJacket.inventoryTxt}</h5>
              <p>$${leatherJacket.priceUsd}</p>
              <c:choose> 
	            <c:when test="${leatherJacket.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>                            
            </div>
            <div class="product-item-badge">New</div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${pleatherShirt.inventoryId}?color=${pleatherShirtDetail.get(0).getColor()}"><img alt="" src="<c:url value="${pleatherShirt.img}"/>"></a>
            <div class="caption">
              <h5>${pleatherShirt.inventoryTxt}</h5>
              <p class="product-item-price">$${pleatherShirt.priceUsd}</p>
              <c:choose> 
	            <c:when test="${pleatherShirt.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${pleatherPants.inventoryId}?color=${pleatherPantsDetail.get(0).getColor()}"><img alt="" src="<c:url value="${pleatherPants.img}"/>"></a>
            <div class="caption">
              <h5>${pleatherPants.inventoryTxt}</h5>
              <p><del>$590.00</del> $${pleatherPants.priceUsd}</p>
              <c:choose> 
	            <c:when test="${pleatherPants.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
            <div class="product-item-badge badge-sale">Sale</div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${hempShirt.inventoryId}?color=${hempShirtDetail.get(0).getColor()}"><img alt="" src="<c:url value="${hempShirt.img}"/>"></a>
            <div class="caption">
              <h5>${hempShirt.inventoryTxt}</h5>
              <p>$${hempShirt.priceUsd}</p>
              <c:choose> 
	            <c:when test="${hempShirt.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
      </div>
      <!-- end:new-arrival -->

      <!-- begin:random-product -->
      <div class="row">
        <div class="col-md-12">
          <div class="page-header">
            <h2>Other Products <small>Other Products</small></h2>
          </div>
        </div>
      </div>

      <div class="row product-container">
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${leatherJacket.inventoryId}?color=${leatherJacketDetail.get(0).getColor()}"><img alt="" src="<c:url value="${leatherJacket.img}"/>"></a>
            <div class="caption">
              <h5>${leatherJacket.inventoryTxt}</h5>
              <p>$${leatherJacket.priceUsd}</p>
              <c:choose> 
	            <c:when test="${leatherJacket.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>                            
            </div>
            <div class="product-item-badge">New</div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${pleatherShirt.inventoryId}?color=${pleatherShirtDetail.get(0).getColor()}"><img alt="" src="<c:url value="${pleatherShirt.img}"/>"></a>
            <div class="caption">
              <h5>${pleatherShirt.inventoryTxt}</h5>
              <p class="product-item-price">$${pleatherShirt.priceUsd}</p>
              <c:choose> 
	            <c:when test="${pleatherShirt.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${pleatherPants.inventoryId}?color=${pleatherPantsDetail.get(0).getColor()}"><img alt="" src="<c:url value="${pleatherPants.img}"/>"></a>
            <div class="caption">
              <h5>${pleatherPants.inventoryTxt}</h5>
              <p><del>$590.00</del> $${pleatherPants.priceUsd}</p>
              <c:choose> 
	            <c:when test="${pleatherPants.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
            <div class="product-item-badge badge-sale">Sale</div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="product_detail/${hempShirt.inventoryId}?color=${hempShirtDetail.get(0).getColor()}"><img alt="" src="<c:url value="${hempShirt.img}"/>"></a>
            <div class="caption">
              <h5>${hempShirt.inventoryTxt}</h5>
              <p>$${hempShirt.priceUsd}</p>
              <c:choose> 
	            <c:when test="${hempShirt.inStock}">
				  <p>Available</p>
				</c:when>
              	<c:otherwise>
            	  <p>Out of Stock</p>
              	</c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
      </div>
      <!-- end:random-product -->

      <!-- begin:footer -->
      <div class="row">
        <div class="col-md-12 footer">
          <div class="row">
            <div class="col-md-3 col-sm-6">
              <div class="widget">
                <h3><span>Contact Info</span></h3>
                <address>
                  No. 22, Bantul, Yogyakarta, Indonesia<br>
                  Call Us : (0274) 4411005<br>
                  Email : avriqq@gmail.com<br>
                </address>
              </div>
            </div>

            <div class="col-md-3 col-sm-6">
              <div class="widget">
                <h3><span>Customer Support</span></h3>
                <ul class="list-unstyled list-star">
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">Payment Option</a></li>
                  <li><a href="#">Booking Tips</a></li>
                  <li><a href="#">Information</a></li>
                </ul>
              </div>
            </div>

            <div class="col-md-3 col-sm-6">
              <div class="widget">
                <h3><span>Discover our store</span></h3>
                <ul class="list-unstyled list-star">
                    <li><a href="#">California</a></li>
                    <li><a href="#">Bali</a></li>
                    <li><a href="#">Singapore</a></li>
                    <li><a href="#">Canada</a></li>
                </ul>
              </div>
            </div>

            <div class="col-md-3 col-sm-6">
              <div class="widget">
                <h3><span>Get Our Newsletter</span></h3>
                <p>Subscribe to our newsletter and get exclusive deals straight to your inbox!</p>
                <form>
                  <input type="email" class="form-control" name="email" placeholder="Your Email : "><br>
                  <input type="submit" class="btn btn-warning" value="Subscribe">
                </form>
              </div>
            </div>

          </div>
        </div>
      </div>
      <!-- end:footer -->

      <!-- begin:copyright -->
      <div class="row">
        <div class="col-md-12 copyright">
          <div class="row">
            <div class="col-md-6 col-sm-6 copyright-left">
              <p>Copyright &copy; Faux Shop 2012-2014. All right reserved.</p>
            </div>
            <div class="col-md-6 col-sm-6 copyright-right">
              <ul class="list-unstyled list-social">
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- end:copyright -->

    </div>
    <!-- end:content -->


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/resources/js/jquery.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/masonry.pkgd.min.js" />"></script>
    <script src="<c:url value="/resources/js/imagesloaded.pkgd.min.js" />"></script>
    <script src="<c:url value="/resources/js/script.js" />"></script>

  </body>
</html>
