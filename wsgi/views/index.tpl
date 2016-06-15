<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="../static/css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="../static/css/layout.css" type="text/css" media="all">
  <link rel="stylesheet" href="../static/css/style.css" type="text/css" media="all">
  <script type="text/javascript" src="../static/js/jquery-1.6.js" ></script>
  <script type="text/javascript" src="../static/js/cufon-yui.js"></script>
  <script type="text/javascript" src="../static/js/cufon-replace.js"></script>
  		<script type="text/javascript" src="../static/js/NewsGoth_BT_400.font.js"></script>
  		<script type="text/javascript" src="../static/js/NewsGoth_BT_700.font.js"></script>
  <script type="text/javascript" src="../static/js/jcarousellite.js"></script>
  <script type="text/javascript" src="../static/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="../static/js/jquery.mousewheel.js"></script>
  <script type="text/javascript" src="../static/js/atooltip.jquery.js"></script>


  <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="all">
  <![endif]-->
	<!--[if lt IE 7]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"  alt="" /></a>
		</div>
	<![endif]-->
</head>

<body id="page1">
	<div class="bg1">
		<div class="main">
			<!--header -->
			<header>
				<nav>
					<ul id="menu">
						<li class="active"><a href="index.tpl">Inicio</a></li>
						<!--
						<li><a href="Parties.html">Parties</a></li>
						<li><a href="Gallery.html">Gallery</a></li>
						<li><a href="Residents.html">Residents</a></li>
						<li><a href="News.html">News</a></li>
						<li><a href="Contacts.html">Contacts</a></li>
						-->
					</ul>
				</nav>
				<h1><a href="index.tpl" class="Logo" <img src="../static/images/logo1.png" alt=""></a></h1>
			</header>
			<!--header end-->
			<div class="box">
			<!--content -->
			<article id="content">
				<div class="wrapper pad_bot1">
					<section class="col1">
						<h2 id="welcom">Bienvenido!</h2>
						<p class="color1">MusiCloud esta dedicado a ofrecerte la mejor música al instante, ademas de la búsqueda de la misma por artitas, albunes. </p>
						<p class="pad_bot1">This <a href="http://blog.templatemonster.com/2011/10/03/free-website-template-background-image-night-club/">Night Club Template</a> goes with two packages – with PSD source files and without them. PSD source files are available for free for the registered members of Templates.com. The basic package (without PSD source) is available for anyone without registration.</p>
					</section>
					
				</div>
				<div class="wrapper">
					<h2>Búsquedas</h2>
					<div class="wrapper">
						<figure class="left marg_right1"><a href="#"><img src="../static/images/logo1.png" alt=""></a></figure>
						<h3>El mejor buscador de musica</h3>
						<p class="pad_bot1">Podrás encontrar a todos los artitas del panorama musical, selecciona la opción, si quieres buscar la cación o la letra.</p>
						<ul class="list1 pad_bot1">
							<li><a href="/artistas">Busca las canciones de tus artistas favoritos.</a></li>
							<li><a href="/letras">letras de tus artistas favoritos</a></li>
						</ul>
					</div>
				</div>
			</article>
			<!--content end-->
			<!--footer -->
			<footer>
				<div class="line1">
					<div class="line2 wrapper">
						<div class="icons">
							<h4>Conecta con nosotros</h4>
							<ul id="iconos">
								<li><a href="https://www.reddit.com/r/deezer/" class="normaltip" title="Reddit"><img src="images/icon1.jpg" alt=""></a></li>
								<li><a href="https://twitter.com/deezer?lang=es" class="normaltip" title="Twitter"><img src="images/icon3.jpg" alt=""></a></li>
								<li><a href="https://www.facebook.com/deezer/" class="normaltip" title="Facebook"><img src="images/icon4.jpg" alt=""></a></li>
							</ul>
							<!-- {%FOOTER_LINK} -->
						<!--
						</div>
						<div class="info">
							<h4>About Us</h4>
							<ul>
								<li><a href="#">Club Info</a></li>
								<li><a href="#">Music</a></li>
								<li><a href="#">DJ Sets</a></li>
								<li><a href="#">News</a></li>
							</ul>
						</div>
						<div class="info">
							<h4>Join In</h4>
							<ul>
								<li><a href="#">Sign In</a></li>
								<li><a href="#">Forums</a></li>
								<li><a href="#">Promotions</a></li>
							</ul>
						</div>
						<div class="phone">
							<h4>Order Tickets</h4>
							<p>Free Phone<span>8-800-123-NIGHT</span></p>
						</div>
					</div>
					<a href="http://www.templatemonster.com/">Website Template by TemplateMonster.com</a>
				</div>
			</footer>
			-->
			<!--footer end-->
			</div>
		</div>
	</div>
<script>
$(document).ready(function(){
	//gallery
	$("#gallery1").jCarouselLite({
			btnNext: ".next",
		 	btnPrev: ".prev",
       		mouseWheel: true,
			vertical: true,
			circular: true,
			visible: 2,
			speed: 600,
			easing: 'easeOutCirc'
	});
	Cufon.now();
})
</script>
</body>
</html>
