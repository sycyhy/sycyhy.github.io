<!DOCTYPE html>
<html lang="en">
    <head>

        <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1.0" name="viewport"/>
        <title>
            <%=content.title ? content.title + ' - Lukasz Warzecha blog' : 'Lukasz Warzecha - All things software related'%>
        </title>
        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=content.rootpath ?: ''%>css/materialize.css" media="screen,projection" rel="stylesheet" type="text/css"/>
        <link href="<%=content.rootpath ?: ''%>css/style.css" media="screen,projection" rel="stylesheet" type="text/css"/>
        <link href="<%=content.rootpath ?: ''%>css/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="<%=content.rootpath ?: ''%>css/asciidoctor.css" media="screen,projection" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js">
        </script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-98717873-1"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'UA-98717873-1');
        </script>

                        <style>
                            li.L0, li.L1, li.L2, li.L3,
li.L5, li.L6, li.L7, li.L8 {
  list-style-type: decimal !important;
}
                        </style>
                    </link>
                </link>
            </link>
        </link>
    </head>

    <% def shouldAddArchiveTab = published_posts.size() > 7 %> 

    <body class="scrollspy">
        <!-- nav light-blue lighten-1 -->
        <div class="navbar-fixed">
            <nav id="nav_f" role="navigation">
                <div class="row">
                    <div class="nav-wrapper container">
                        <a class="sidenav-trigger" data-target="mobile-demo" href="#">
                            <i class="material-icons">
                                menu
                            </i>
                        </a>
                        <a class="brand-logo" href="<%=content.rootpath ?: ''%>index.html" id="logo-container">
                            sycyhy.github.io
                        </a>
                        <ul class="right hide-on-med-and-down">
                            <li>
                                <a class="site-nav__link" href="<%=content.rootpath ?: ''%>index.html">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a class="site-nav__link" href="<%=content.rootpath ?: ''%>about.html">
                                    About me
                                </a>
                            </li>
<% if(shouldAddArchiveTab) { %> 
                            <li>
                                <a class="site-nav__link" href="<%=content.rootpath ?: ''%>archive.html">
                                    Archive
                                </a>
                            </li>
<% } %>                                                         
                            <li>
                                <a href="<%=content.rootpath ?: ''%>${config.feed_file}" target="feed">
                                    Feed
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <ul class="sidenav" id="mobile-demo">
            <li>
                <a class="site-nav__link" href="<%=content.rootpath ?: ''%>index.html">
                    Home
                </a>
            </li>
            <li>
                <a class="site-nav__link" href="<%=content.rootpath ?: ''%>about.html">
                    About me
                </a>
            </li>
                <% if(shouldAddArchiveTab) { %> 
            <li>
                <a class="site-nav__link" href="<%=content.rootpath ?: ''%>archive.html">
                    Archive
                </a>
            </li>
                <% } %> 
            <li>
                <a href="<%=content.rootpath ?: ''%>${config.feed_file}" target="feed">
                    Feed
                </a>
            </li>

           <div class="social-media-menu" style="bottom: 70px;position: absolute;">

                        <a href="https://twitter.com/sycyhy/" class="footer-icons waves-effect waves-light" target="twitter"><i
                class="fa fa-twitter" style="font-size:24px;"></i></a>
                <a href="https://github.com/sycyhy/" class="footer-icons" target="github"><i class="fa fa-github"
                                                                                            style="font-size:24px;"></i></a>
                <a href="https://www.linkedin.com/in/lukasz-warzecha/" class="footer-icons" target="linkedin"><i
                class="fa fa-linkedin" style="font-size:24px;"></i></a>

            </div>

        </ul>
        <div class="section no-pad-bot z-depth-2" id="index-logo">
            <div class="text_h center header cd-headline letters type">
                <h1>
                    I make things
                </h1>
                <div class="tagline">
                    or at least I try :)
                </div>
            </div>
        </div>
    </body>
</html>