<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title></title>
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet/less" href="${request.static_url('pastefest:static/less/style.less')}">
    <link rel="stylesheet" href="${request.static_url('pastefest:static/pygments.css')}" media="screen" charset="utf-8" />
    <script src="${request.static_url('pastefest:static/js/libs/less-1.2.1.min.js')}"></script>

    <!-- Use SimpLESS (Win/Linux/Mac) or LESS.app (Mac) to compile your .less files
    to style.css, and replace the 2 lines above by this one:

    <link rel="stylesheet/less" href="less/style.css">
     -->

     <script src="${request.static_url('pastefest:static/js/libs/modernizr-2.5.3-respond-1.1.0.min.js')}"></script>
</head>
<body>
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="/">Pastefest</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="/">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

     ${next.body()}

     <hr>

     <footer>
     <p>
     <img src="${request.static_url('pastefest:static/img/logo-pyramid.png')}"/>
     <img src="${request.static_url('pastefest:static/img/logo-heroku.png')}"/>
     </p>
     </footer>

    </div> <!-- /container -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="${request.static_url('pastefest:static/js/libs/jquery-1.7.1.min.js')}"><\/script>')</script>

<script src="${request.static_url('pastefest:static/js/libs/bootstrap/transition.js')}"></script>
<script src="${request.static_url('pastefest:static/js/libs/bootstrap/collapse.js')}"></script>

<script src="${request.static_url('pastefest:static/js/script.js')}"></script>
<script>
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s)}(document,'script'));
</script>

<a href="https://github.com/wwitzel3/pastefest"><img style="z-index: 5; position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png" alt="Fork me on GitHub"></a>
</body>
</html>
