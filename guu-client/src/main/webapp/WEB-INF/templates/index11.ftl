<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>谷雨：专注 HTML5 && 响应式  </title>

    <!-- Bootstrap core CSS -->
    <link href="${base}/resources/common/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${base}/resources/stylish/css/stylish.css" rel="stylesheet">
    <link href="${base}/resources/common/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${base}/resources/common/css/fileinput.min.css" rel="stylesheet">

	<script src="${base}/resources/common/js/jquery-1.11.2.js"></script>
	<script src="${base}/resources/common/js/fileinput.min.js"></script>
</head>

<body>

    <!-- Side Menu -->
    <a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i class="fa fa-bars"></i></a>
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand"><a href="/">GUU</a>
            </li>
            <li><a href="#top">首页</a>
            </li>
            <li><a href="#about">关于</a>
            </li>
            <li><a href="#services">服务</a>
            </li>
            <li><a href="#portfolio">案例</a>
            </li>
            <li><a href="#contact">联系我们</a>
            </li>
        </ul>
    </div>
    <!-- /Side Menu -->

    <!-- Full Page Image Header Area -->
    <div id="top" class="header">
        <div class="vert-text">
            <h1>谷  雨</h1>
            <h3>播种希望,收获未来</h3>
            <a href="#about" class="btn btn-default btn-lg">Find Out More</a>
        </div>
    </div>
    <!-- /Full Page Image Header Area -->

    <!-- Intro -->
    <div id="about" class="intro">
        <div class="container">
            <div class="row">
             <div class="col-md-6  text-center">
                   <img class="img-portfolio img-responsive" src="resources/stylish/img/responsive.png"/>
                </div>
                <div class="col-md-6  text-center">
                   
                    <p class="lead"><b>响应式设计</b>
根据访问者的设备类型，自动调整页面版式，适应电脑、iPad，手机等各类不同尺寸的屏幕，无需再为各种设备开发多个版本。
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- /Intro -->

    <!-- Services -->
    <div id="services" class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <h2>服务</h2>
                    <hr>
                </div>
            </div>
            <div class="row">
            <#if webCache?exists>
             <#list webCache.businesses as bus >
             <div class="col-md-2 col-md-offset-2 text-center">
                    <div class="service-item">
                       <img src="${bus.image}">
                        <h4>${bus.name}</h4>
                        <p>${bus.description}</p>
                    </div>
                </div>
             </#list>
             </#if>
                <div class="col-md-2 col-md-offset-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-rocket"></i>
                        <h4>网站维护</h4>
                        <p>Did your navigation system shut down in the middle of that asteroid field? We can repair any dings and scrapes to your spacecraft!</p>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-magnet"></i>
                        <h4>网站设计</h4>
                        <p>Need to know how magnets work? Our problem solving solutions team can help you identify problems and conduct exploratory research.</p>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-shield"></i>
                        <h4>域名注册</h4>
                        <p>Planning a time travel trip to the middle ages? Preserve the space time continuum by blending in with period accurate armor and weapons.</p>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-pencil"></i>
                        <h4>空间代理</h4>
                        <p>We've been voted the best pencil sharpening service for 10 consecutive years. If you have a pencil that feels dull, we'll get it sharp!</p>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <!-- /Services -->

    <!-- Callout -->
    <div class="callout">
        <div class="vert-text">
            <h1>A Dramatic Text Area</h1>
        </div>
    </div>
    <!-- /Callout -->

    <!-- Portfolio -->
    <div id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <h2>案 例</h2>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-2 text-center">
                    <div class="portfolio-item">
                        <a href="templates/business/index.html">
                            <img class="img-portfolio img-responsive" src="resources/stylish/img/portfolio1.png">
                        </a>
                        <h4>Cityscape</h4>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="portfolio-item">
                        <a href="templates/freelancer/index.html">
                            <img class="img-portfolio img-responsive" src="resources/stylish/img/portfolio2.png">
                        </a>
                        <h4>Is That On Fire?</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-2 text-center">
                    <div class="portfolio-item">
                        <a href="templates/grayscale/index.html">
                            <img class="img-portfolio img-responsive" src="resources/stylish/img/portfolio3.png">
                        </a>
                        <h4>Stop Sign</h4>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="portfolio-item">
                        <a href="templates/landing/index.html">
                            <img class="img-portfolio img-responsive" src="resources/stylish/img/portfolio4.png">
                        </a>
                        <h4>Narrow Focus</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Portfolio -->

    <!-- Call to Action -->
    <div class="call-to-action">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <h3>The buttons below are impossible to resist.</h3>
                    <a href="#" class="btn btn-lg btn-default">Click Me!</a>
                    <a href="#" class="btn btn-lg btn-primary">Look at Me!</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /Call to Action -->

    <!-- Map
    <div id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        </iframe>
    </div>
     -->
    <!-- /Map -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <ul class="list-inline">
                        <li><i class="fa fa-facebook fa-3x"></i>
                        </li>
                        <li><i class="fa fa-twitter fa-3x"></i>
                        </li>
                        <li><i class="fa fa-dribbble fa-3x"></i>
                        </li>
                    </ul>
                    <div class="top-scroll">
                        <a href="#top"><i class="fa fa-arrow-circle-up scroll fa-4x"></i></a>
                    </div>
                    <hr>
                    <p>Copyright &copy; Company 2015</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- /Footer -->

    <!-- JavaScript -->
    <script src="${base}/resources/common/js/bootstrap.js"></script>

    <!-- Custom JavaScript for the Side Menu and Smooth Scrolling -->

<script>
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>

</body>

</html>
