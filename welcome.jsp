<html>
<head>
<title>Welcome</title>
</head>
<link rel="stylesheet" 
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="navbar-header">
			<a class ="navbar-brand" href="./welcome.jsp">HOME</a>
		</div>
	</nav>
			<%! String greeting = "Welcome to Web Shopping Mall!!" ; 
	   			 String tagline = "Welcome to Web Market!!"; %>
	    <div class="jumbotron">
	   		<h1 class="display-3"><%=greeting %></h1>
	    </div>
		<div class="container">
			<div class="text-center">
				<h3><%=tagline %></h3>
			</div>
		</div>
	
	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer>
	
</body>
</html>