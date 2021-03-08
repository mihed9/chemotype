<head>
	<meta name="layout" content="index"/>
</head>
<body>
<g:render template="/generalTemplate/navbar"/>
<header id="myCarousel" class="carousel slide">
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item active">
			<div class="fill" style="background-image:url('/images/general/fist.jpg');"></div>
			<div class="carousel-caption">
			</div>
		</div>
		<div class="item">
			<div class="fill" style="background-image:url('/images/general/second.jpg');"></div>
			<div class="carousel-caption">
			</div>
		</div>
		<div class="item">
			<div class="fill" style="background-image:url('/images/general/third.jpg');"></div>
			<div class="carousel-caption">
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="icon-prev"></span>
	</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="icon-next"></span>
	</a>
</header>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header" style="text-align: center">
				<g:message code="index.welcome" />
			</h1>
		</div>
	<div>
		<p class="text">
		<g:message code="index.welcome.text" /><br><br>
			<g:message code="index.welcome.text2" />
		</p>
	</div>
	<a name="search"></a>
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4><g:message code="index.filter1.title" /></h4>
				</div>
				<div class="panel-body">
					<p><g:message code="index.filter1.description" /></p>
					<a href="${createLink(controller: "variability")}" class="btn btn-success"><g:message code="button.find" /></a>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4><g:message code="index.filter2.title" /></h4>
				</div>
				<div class="panel-body">
					<p><g:message code="index.filter2.description" /></p>
					<a href="${createLink(controller: "compounds")}" class="btn btn-success"><g:message code="button.find" /></a>
				</div>
			</div>
		</div>
	</div>
	<div class="row" style="align-content: center">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 style="text-align: center"><g:message code="index.filter3.title" /></h4>
				</div>
				<div class="panel-body">
					<p><g:message code="index.filter3.description" /></p>
					<a href="${createLink(controller: "experiment")}" class="btn btn-success"><g:message code="button.find" /></a>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="row">
		<div class="col-lg-12">
			<h2 class="page-header"><g:message code="index.statistic.title" /></h2>
		</div>
		<div class="col-md-6 ">
			<p><g:message code="index.statistic.description" /></p>
			<ul>
				<li><g:message code="index.statistic.elem1" /></li>
				<li><g:message code="index.statistic.elem2" /></li>
				<li><g:message code="index.statistic.elem3" /></li>
				<li><g:message code="index.statistic.elem4" /></li>
				<li><g:message code="index.statistic.elem5" /></li>
			</ul>
			<g:message code="index.statistic.text"/>
		</div>
		<div class="col-md-6">
			<img class="img-responsive" src="/images/general/statis.jpg" alt="">
		</div>
	</div>
	<g:render template="/generalTemplate/footer"/>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('.carousel').carousel({
			interval: 5000 //changes the speed
		});
		getStatistics();
		function getStatistics() {
			$.ajax({
				cache: false,
				type: 'POST',
				url: '${createLink(controller: 'variability', action: 'countStatistics')}',
				async: true,
				dataType: 'json',
				success: function (result) {
					if (result) {
						$("#elem1").append(result.artic);
						$("#elem2").append(result.genus);
						$("#elem3").append(result.comp);
						$("#elem4").append(result.spec);
						$("#elem5").append(result.specComp);
					}
				}
			});
		}
	});
</script>
</body>