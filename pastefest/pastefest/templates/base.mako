<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" xmlns:tal="http://xml.zope.org/namespaces/tal">
<head>
  <title>Pastefest</title>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
  <meta name="keywords" content="python web application" />
  <meta name="description" content="pyramid web application" />

  <link rel="shortcut icon" href="${request.static_url('pastefest:static/favicon.ico')}" />
  <link rel="stylesheet" href="${request.static_url('pastefest:static/pygments.css')}" media="screen" charset="utf-8" />
</head>
<body>
	<div class="topbar">
		<div class="fill">
			<div class="container">
				<a class="brand" href="${request.route_url('index')}">Pastefest</a>
				<ul class="nav">
					<li class="active"><a href="${request.route_url('index')}">Home</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		${next.body()}
	</div>
</body>
</html>
