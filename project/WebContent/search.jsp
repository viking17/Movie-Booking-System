<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Showing Now</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<style>
body {
  font-family: 'Open Sans', sans-serif;
  
  background-size: cover;
  font-size: 14px;
  line-height: 24px;
  color: rgb(0, 0, 0);
  background-color: #fff;
}


#imgcover img{
  width: auto;
  height: auto;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

#heading h1{
  margin-top: 20px;
  margin-bottom: 60px;
  font-size: 36px;
  font-weight: 700;
  margin-left: 60px;
  margin-right: 60px;
  text-align: center;
}

#heading h2{
  margin-left: 60px;
  margin-right: 60px;
  font-size: 26px;
  text-align: center;
}

.container-fluid p{
  font-size : 16px;
  text-align: justify;
  margin-left: 60px;
  margin-right: 60px;
}

.container-fluid .row{
  margin-top: 20px;
  margin-bottom: 20px;
}

#imgleft{
  float: left;
  height: 300px;
  width: 350px;
  margin-left: 60px;
  margin-right: 60px;
  margin-bottom: 20px;
}

#imgright{
  float: right;
  height: 300px;
  width: 350px;
  margin-left: 60px;
  margin-right: 60px;
  margin-bottom: 20px;

}




</style>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="home.jsp">BookYourTicket</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href=home.jsp>Home</a></li>
	        <li><a href=search.jsp>Showing Now</a></li>
					<li><a href=aboutus.jsp>About Us</a></li>
					
	      </ul>
				<ul class="nav navbar-nav navbar-right">
		<li><a href="feedback.jsp">Feedback</a></li>        
		<li><a href="login.jsp">Login</a></li>
	      </ul>


      </ul>
	    </div>
	  </div>
	</nav>
	<h1></h1>
	<h1></h1>
	<h1></h1>
	
		<div class="container-fluid">
		<div class="row" ><br>
			<img src="p1.jpg" id='imgleft'>
			<div id=heading>
			<h1></h1>
				<h2>Bahubali: The Conclusion</h2>
			</div>
			<p>Baahubali 2: The Conclusion (English: The Man With Strong Arms: The Conclusion) is a 2017 Indian historical fiction film co-written and directed by S. S. Rajamouli.[6] The film was produced by Tollywood studio Arka Media Works. It is the continuation of Baahubali: The Beginning. Simultaneously made in both Telugu and Tamil languages, the film stars major actors from Tollywood industry with Prabhas, Rana Daggubati and Anushka Shetty in lead roles. </p>
		</div>
		<div class="row">
			<img src="p2.jpg" id="imgright">
			<div id=heading>
				<h2>Fate of The Furious</h2>
			</div>
			<p>The Fate of the Furious (alternatively known as Fast & Furious 8 and Fast 8, and often stylized as F8) is a 2017 American action film directed by F. Gary Gray and written by Chris Morgan. It is the eighth installment in The Fast and the Furious franchise. The film stars Vin Diesel, Dwayne Johnson, Jason Statham, Michelle Rodriguez, Tyrese Gibson, Chris 'Ludacris' Bridges, Scott Eastwood, Nathalie Emmanuel, Elsa Pataky, Kurt Russell and Charlize Theron. The Fate of the Furious follows Dominic Toretto (Diesel), who has settled down with his wife Letty (Rodriguez), until cyberterrorist Cipher (Theron) coerces him into working for her and turns him against his team, forcing them to find Dom and take down Cipher. </p>
			<div class="hr"></div>
		</div>
		<div class="row">
			<img src="p3.jpg" id="imgleft">
			<div id=heading>
				<h2>Guardians of The Galaxy : Vol.2</h2>
			</div>
			<p>Guardians of the Galaxy Vol. 2 is a 2017 American superhero film based on the Marvel Comics superhero team Guardians of the Galaxy, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the sequel to 2014's Guardians of the Galaxy and the fifteenth film in the Marvel Cinematic Universe. The film is written and directed by James Gunn and stars an ensemble cast featuring Chris Pratt, Zoe Saldana, Dave Bautista, Vin Diesel, Bradley Cooper, Michael Rooker, Karen Gillan, Pom Klementieff, Elizabeth Debicki, Chris Sullivan, Sean Gunn, Sylvester Stallone, and Kurt Russell. In Guardians of the Galaxy Vol. 2, the Guardians travel throughout the cosmos as they help Peter Quill learn more about his true parentage. </p>
			<div class="hr"></div>
		</div>
		<div class="row">
			<img src="p4.jpeg" id="imgright">
			<div id=heading>
				<h2>La La Land!</h2>
			</div>
			<p>La La Land is a 2016 American romantic musical comedy-drama film written and directed by Damien Chazelle, and starring Ryan Gosling and Emma Stone as a musician and an aspiring actress who meet and fall in love in Los Angeles. The film's title refers both to the city of Los Angeles and to the idiom for being out of touch with reality.

Chazelle wrote the screenplay in 2010 but did not find a studio willing to finance the production without changes to his design. Following the success of his 2014 film Whiplash, the project was picked up by Summit Entertainment. La La Land was premiered at the Venice Film Festival on August 31, 2016, and was released in the United States on December 9, 2016. It grossed $442 million worldwide on a production budget of $30 million.[a] </p>
			<div class="hr"></div>
		</div>

	</div>

	<script src="js/bootstrap.min.js"></script>

</body>
</html>
</body>
</html>