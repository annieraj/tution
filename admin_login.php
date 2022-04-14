<?php
$re="";
    require_once "config.php";
   if($_SERVER["REQUEST_METHOD"] == "POST")
   
        {
          
            if(isset($_POST["submit"])){
                $username=$_POST['name'];
                $password=$_POST['password'];
               
               $sql = "SELECT  username, password FROM admin_login";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $us=$row["username"];
        $ps=$row["password"];
        if ($username==$us && $password==$ps)
        {
            session_start();
            $_SESSION['admin']  = $username;
			header('location: admin_dashboard/index.php');		
        }
    }
} else {
    echo "0 results";
}
              // $row = mysql_fetch_array($re);
              // if ( $row['username'] == $username &&  $row['password'] == $passwordd )
                 //  {    echo success;  }
             // $conn->close(); }

            }
             



            }
        
            
?>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Admin Login</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Matrimony Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/alog.css" type="text/css" media="all" />
	<!-- Style-CSS -->
        <link rel="stylesheet" href="css/Font.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext"
	    rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!-- title -->
	<h1>Admin Login</h1>
	<!-- //title -->

	<!-- content -->
	<div class="sub-main-w3">
            <form action="" method="post">
			<h2>login Now
				<i class="fas fa-level-down-alt"></i>
			</h2>
                
			<div class="form-style-agile">
				<label>
					Username
					<i class="fas fa-user"></i>
				</label>
				<input placeholder="Username" name="name" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					Password
					<i class="fas fa-unlock-alt"></i>
				</label>
				<input placeholder="Password" name="password" type="password" required="">
			</div>
			<!-- checkbox -->
			<div class="wthree-text">
				<ul>
					<li>
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>Remember me</span>
						</label>
					</li>
					<li>
						<a href="#">Forgot Password?</a>
					</li>
				</ul>
			</div>
			<!-- //checkbox -->
			<input type="submit" value="Log In" name="submit">
		</form>
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>&copy; 2020 Admin Login Form. All rights reserved | 
			
		</p>
	</div>
	<!-- //copyright -->

</body>

</html>