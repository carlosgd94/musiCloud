<!DOCTYPE html>
<html lang="en">
	<head>
		<title>MusiCloud</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="../static/css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="../static/css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="../static/css/style.css" type="text/css" media="all">
		<script type="text/javascript" src="../static/js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="../static/js/cufon-yui.js"></script>
		<script type="text/javascript" src="../static/js/cufon-replace.js"></script>
		<script type="text/javascript" src="../static/js/NewsGoth_BT_400.font.js"></script>
		<script type="text/javascript" src="../static/js/NewsGoth_BT_700.font.js"></script>
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
	<body id="page6">
		<div class="bg1">
			<div class="main">
				<!--header -->
				<header>
					<nav>
						<ul id="menu">
							<li><a href="/">Inicio</a></li>
							<li><a href="/artistas">Artistas</a></li>
							<li><a href="/letras">Letras</a></li>
						</ul>
					</nav>
					<h1></h1><a href="/"><img src="../static/images/logo1.png" alt=""></a></h1>
				</header><div class="ic">More Website Templates @ TemplateMonster.com - October 03, 2011</div>
				<!--header end-->
				<div class="box">
				<!--content -->
				<div id="Pbusqueda">
				<p>Resultado de la busqueda: {{busqueda}} </p>
				</div>
				<div id="contenedor">
					%for i in data['data']:
						<div class="cajas">
				<table>
					<tr>
						<img src="{{ i['cover'] }}" />
					</tr>
					<td class="letra">
						<p>{{ i['artist']['name'] }} </p>
						<p>{{ i['title'] }}</p>
						<a href="{{ i['link'] }}"> ¿Desea escuchar este disco?, click aqui </a>
					</td>
				<br>
				</table>
				</div>
				%end
				<!--content end-->
				<!--footer -->
				<footer>
				<div class="line1">
					<div class="line2 wrapper">
						<div class="icons">
							<h4>Conecta con nosotros</h4>
							<ul id="iconos">
								<li><a href="https://www.reddit.com/r/deezer/" class="normaltip" title="Reddit"><img src="../static/images/icon1.jpg" alt=""></a></li>
								<li><a href="https://twitter.com/deezer?lang=es" class="normaltip" title="Twitter"><img src="../static/images/icon3.jpg" alt=""></a></li>
								<li><a href="https://www.facebook.com/deezer/" class="normaltip" title="Facebook"><img src="../static/images/icon4.jpg" alt=""></a></li>
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
