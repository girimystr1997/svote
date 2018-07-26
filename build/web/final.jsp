<!DOCTYPE HTML>
<html>
	<head>
		<title>Thank you</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<p class="logo">my vote  my support</p>
			</header>

		<!-- Banner -->
			<section id="banner">
				<div class="content">
                                    <h1>
                                        <% String voted = (String)session.getAttribute("voted");
                                           out.println(voted);
                                        %></h1>
					<p>don't sell your votes your vote is your right <br />india is a secular republic country were people can select their leader</p>
					<ul class="actions">
						<li><a href="index.html" class="button scrolly">Log out</a></li>
					</ul>
				</div>
			</section>
                                   
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>