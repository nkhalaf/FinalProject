
<!DOCTYPE html>
<html lang="en">

<head>
  <style type="text/css">
.page-header{
background-color: rgba(188, 188, 188,0.2);
text-align: center;
}
#form2{
width:50%;
height:50%;
margin-left:25%;
margin-right: 25%;
margin-top: 5%;
margin-bottom:5%;
border: 2px solid;
border-radius: 25px;
background-color: rgba(188, 188, 188,0.2);
}
.col-sm-12{
background-color: rgba(188, 188, 188,0.2);
width:100%;
margin-top: 10%;
margin-bottom: 10%;
font-size:xx-large;
}
#password,#userName{
margin-top:3%;
width:80%;
}
#LoginB{
width:80%;
}
  </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="brand">Business Casual</div>
    <div class="address-bar">3481 Melrose Place | Beverly Hills, CA 90210 | 123.456.7890</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="Home.wl">Home</a>
                    </li>
                    <li>
                        <a href="about.wl">About</a>
                    </li>
                    <li>
                        <a href="blog.wl">Blog</a>
                    </li>
                    <li>
                        <a href="contact.wl">Contact</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                    <center>
                        <h3>please enter the user name and password</h3>
                        <hr>
<form action="http://localhost:8080/LoginProject/LoginS" method="post" class="form-horizontal" role="form" id="form2" >
    <div class="form-group">
<input type="text" name = "userName" id="userName"  class="form-control" placeholder="userName"  required  >
</div>
    <div class="form-group">
<input type = "password" name="password"  class="form-control" id = "password" placeholder="password" required >
</div>
    <div class="form-group">
<input type = "submit" value="Log in"  class="btn btn-primary  btn-block" id="LoginB" > 
</div>
</form>
</center>
                </div>
            </div>
        </div>
</body>
</html>
