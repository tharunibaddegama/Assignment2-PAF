<!DOCTYPE html>
<html lang="en">
<%@page import="com.Product"%>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>product buying (1) late</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600,700">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Animated-Pretty-Product-List-v12.css">
    <link rel="stylesheet" href="assets/css/Billing-Table-with-Add-Row--Fixed-Header-Feature.css">
    <link rel="stylesheet" href="assets/css/Bold-BS4-Jumbotron-with-Particles-js-1.css">
    <link rel="stylesheet" href="assets/css/Bold-BS4-Jumbotron-with-Particles-js.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-Callout-Success.css">
    <link rel="stylesheet" href="assets/css/Button-Change-Text-on-Hover.css">
    <link rel="stylesheet" href="assets/css/DashBoard-light-boostrap-1.css">
    <link rel="stylesheet" href="assets/css/DashBoard-light-boostrap-2.css">
    <link rel="stylesheet" href="assets/css/DashBoard-light-boostrap-4.css">
    <link rel="stylesheet" href="assets/css/DashBoard-light-boostrap-3.css">
    <link rel="stylesheet" href="assets/css/custom-buttons.css">
    <link rel="stylesheet" href="assets/css/Dashboard-layout.css">
    <link rel="stylesheet" href="assets/css/DashBoard-light-boostrap.css">
    <link rel="stylesheet" href="assets/css/Drag--Drop-Upload-Form.css">
    <link rel="stylesheet" href="assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Form-Select---Full-Date---Month-Day-Year.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/Header---Apple.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">
    <link rel="stylesheet" href="assets/css/Multi-Select-Dropdown-by-Jigar-Mistry.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table-1.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table.css">
    <link rel="stylesheet" href="assets/css/NZButtonAddDelete-2.css">
    <link rel="stylesheet" href="assets/css/NZDropdown---Muitlple.css">
    <link rel="stylesheet" href="assets/css/Pretty-Header.css">
    <link rel="stylesheet" href="assets/css/Pretty-Login-Form.css">
    <link rel="stylesheet" href="assets/css/Pretty-Search-Form.css">
    <link rel="stylesheet" href="assets/css/Pretty-Table-1.css">
    <link rel="stylesheet" href="assets/css/Pretty-Table.css">
    <link rel="stylesheet" href="assets/css/Pricing-Tables-1.css">
    <link rel="stylesheet" href="assets/css/Pricing-Tables.css">
    <link rel="stylesheet" href="assets/css/Responsive-Image-File-Input.css">
    <link rel="stylesheet" href="assets/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Swipe-Slider-7.css">
    <link rel="stylesheet" href="assets/css/Table-with-search--sort-filters.css">
    <link rel="stylesheet" href="assets/css/Table-With-Search-1.css">
    <link rel="stylesheet" href="assets/css/Table-With-Search.css">
    <script src="Components/jquery-3.2.1.min.js"></script>
	<script src="Components/main.js"></script>
</head>

<body><div>
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid"><a class="navbar-brand" href="#"><img src="assets/img/logo%20-%20Copy.png" width="150px" height="auto" /></a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Cart</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Selling</a></li>
                    <li class="nav-item dropdown"><a aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle nav-link" href="#">My Account</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="#">Projects</a><a class="dropdown-item" href="#">Settings</a><a class="dropdown-item" href="#">Store</a><a class="dropdown-item" href="#">Logout</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="width: 985.6px;">
                <div>
                    <div style="text-align: right;border-style: solid;border-color: var(--indigo);border-top-style: none;border-right-style: none;border-bottom-style: none;border-left-style: none;height: 60px;"><button class="btn btn-primary" type="button" style="width: 150px;color: var(--white);background: var(--indigo);">View Details</button><button class="btn btn-primary" type="button" style="width: 150px;background: var(--indigo);color: var(--white);">Dashboard</button></div>
                </div>
            </div>
        </div>
        <div><input type="text" class="form-control-plaintext" value="Store Name: " readonly /></div>
        <div style="text-align: center;">
            <form id="formproduct" name="formproduct" class="bootstrap-form-with-validation" style="background: var(--light);padding: 40px;padding-top: 39px;text-align: left;border-style: solid;border-top-style: solid;border-top-color: var(--green);border-right-style: solid;border-right-color: var(--green);border-bottom-style: solid;border-bottom-color: var(--green);border-left-style: solid;border-left-color: var(--green);width: 930px;">
                <h2 class="text-center" style="color: var(--green);background: var(--white);text-shadow: 0px 0px var(--purple);">Stock Your Shop</h2>
                <div class="form-group" style="width: 820px;border-right-style: none;border-right-color: var(--indigo);"><label for="text-input" style="font-size: 15px;font-family: 'Alfa Slab One', cursive;"><i class="fa fa-star"></i>Product ID</label><input class="form-control-plaintext" type="text" value="Product ID:" id="productId" name="productId"  /></div>
                <div class="form-group"><label for="text-input" style="font-size: 15px;font-family: 'Alfa Slab One', cursive;"><i class="fa fa-pencil-square-o"></i>� Title</label><input type="text" class="form-control" id="title" name="title" required /><small style="color: var(--blue);font-size: 14px;"><br />Tell the world all about your item and why they’ll love it.<br /><br /></small></div>
                <div class="form-group"><label for="textarea-input" style="font-size: 15px;font-family: 'Alfa Slab One', cursive;"><i class="fa fa-pencil"></i>Short Description</label><textarea id="sDesc" name="sDesc" class="form-control"></textarea><small style="color: var(--blue);font-size: 14px;"><br />Start with a brief overview that describes your item’s finest features. Shoppers will only see this description at first, so make it count!<br /><br /></small></div>
                <div class="form-group"><label for="textarea-input" style="font-size: 15px;font-family: 'Alfa Slab One', cursive;"><i class="fa fa-pencil"></i> Description</label><textarea id="lDesc" name="lDesc" class="form-control" style="  max-height: 300px;
  height: 300px;
" required></textarea><small style="color: var(--blue);font-size: 14px;">Not sure what else to say? Shoppers also like hearing about your process, and the story behind this item.<br /><br /></small></div>
                <div class="form-group" style="width: 500px;height: 175px;border-style: none;"><label for="textarea-input" style="font-size: 15px;font-family: 'Alfa Slab One', cursive;"><i class="fa fa-money"></i>Price</label>
                    <div class="input-group">
                        <div class="input-group-prepend"><span class="input-group-text">USD<input id="price" name="price" type="number" class="form-control" required /><small class="form-text text-muted" style="color: var(--blue);">Please enter a price.</small></span></div>
                        <div class="input-group-append"></div>
                    </div><small style="font-size: 14px;color: var(--red);"><br />Price must be between USD 20 and USD 50,000.00.<br /><br /></small>
                </div>
                <div>
                    <div id="Success-Button">
                        <div role="dialog" tabindex="-1" class="modal fade" id="succesalert">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-body" id="successalert" style="color: green;height: 112px;">
                                        <div class="form-row">
                                            <div class="col-xl-4 d-xl-flex justify-content-xl-center align-items-xl-center" style="font-size: 80px;"><i class="far fa-check-circle"></i></div>
                                            <div class="col d-xl-flex justify-content-xl-start align-items-xl-center"><span class="d-xl-flex" style="font-size: 25px;"><strong>Success! </strong>This is alert</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group" style="width: 600px;max-width: 600px;border-style: none;max-height: 200px;height: 200px;"><label for="textarea-input" style="font-size: 15px;font-family: 'Alfa Slab One', cursive;"><i class="fa fa-file"></i>Upload File</label><small style="max-height: 40px;height: 40px;font-size: 15px;color: var(--blue);"><br />Buyers can download these files as soon as they complete their purchase.<br /><br /></small><input type="text" id="downloadLink" name="downloadLink" class="form-control-file" style="  max-height: 50px;
  height: 50px;
" required />

					<input type="hidden" id="hidItemIDSave"
			 				name="hidItemIDSave" value="">
</div>
                <div id="Success-Button">
                    <div role="dialog" tabindex="-1" class="modal fade" id="succesalert">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-body" id="successalert" style="color: green;height: 112px;">
                                    <div class="form-row">
                                        <div class="col-xl-4 d-xl-flex justify-content-xl-center align-items-xl-center" style="font-size: 80px;"><i class="far fa-check-circle"></i></div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 
                <div id="Success-Button" style="text-align: right;height: 60px;"><button class="btn btn-success" id="btnSave" name="btnSave" data-toggle="modal" data-target="#succesalert" type="button" style="width: 150px;height: 55px;background: var(--green);color: var(--white);border-top-color: var(--dark);border-right-style: solid;border-right-color: var(--dark);border-bottom-style: solid;border-bottom-color: var(--gray-dark);border-left-style: solid;border-left-color: var(--dark);">SAVE<i class="fas fa-save" style="color: var(--white);"></i></button>
                   
                </div>
            </form>
            
            <div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
		
		<br>
		<div id="divItemsGrid">
			 <%
			 Product proObj = new Product();
			 out.print(proObj.readProducts());
			 
			 
			 %>
		</div>
        </div>
    </div>
</div>
    <div style="margin-top: 50px;">
        <footer class="footer-basic">
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
                <li class="list-inline-item"><a href="#">Terms</a></li>
                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            </ul>
            <p class="copyright">GadgetBadget&nbsp;© 2021</p>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/DashBoard-light-boostrap-2.js"></script>
    <script src="assets/js/DashBoard-light-boostrap.js"></script>
    <script src="assets/js/DashBoard-light-boostrap-1.js"></script>
    <script src="assets/js/DashBoard-light-boostrap-4.js"></script>
    <script src="assets/js/DashBoard-light-boostrap-3.js"></script>
    <script src="assets/js/Animated-Pretty-Product-List-v12.js"></script>
    <script src="assets/js/Billing-Table-with-Add-Row--Fixed-Header-Feature.js"></script>
    <script src="assets/js/Bold-BS4-Jumbotron-with-Particles-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/jquery.tablesorter.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/widgets/widget-filter.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/widgets/widget-storage.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="assets/js/Multi-Select-Dropdown-by-Jigar-Mistry.js"></script>
    <script src="assets/js/Pricing-Tables-1.js"></script>
    <script src="assets/js/Pricing-Tables.js"></script>
    <script src="assets/js/Swipe-Slider-7.js"></script>
    <script src="assets/js/Table-with-search--sort-filters.js"></script>
    <script src="assets/js/Table-With-Search.js"></script>
</body>

</html>