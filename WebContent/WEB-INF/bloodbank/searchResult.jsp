<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<!-- Mirrored from pages.revox.io/dashboard/latest/html/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 09 Jan 2016 18:25:15 GMT -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<meta charset="utf-8"/>
<title>BBDAS - Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no"/>
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"0b6c9ac1c6f251f7c1536b463f33bdb8",petok:"0b0a46589da70480f5a40c813bbd2dbdb981a087-1452363910-1800",zone:"revox.io",rocket:"0",apps:{"ga_key":{"ua":"UA-56895490-1","ga_bs":"1"}},sha2test:0}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="../../../../ajax.cloudflare.com/cdn-cgi/nexp/dok3v%3d38857570ac/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="apple-touch-icon" href="pages/ico/60.png">
<link rel="apple-touch-icon" sizes="76x76" href="pages/ico/76.png">
<link rel="apple-touch-icon" sizes="120x120" href="pages/ico/120.png">
<link rel="apple-touch-icon" sizes="152x152" href="pages/ico/152.png">
<link rel="icon" type="image/x-icon" href="favicon.html"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta content="" name="description"/>
<meta content="" name="author"/>
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/nvd3/nv.d3.min.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/mapplic/css/mapplic.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" media="screen">
<link href="assets/plugins/jquery-metrojs/MetroJs.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
<link class="main-stylesheet" href="pages/css/pages.css" rel="stylesheet" type="text/css"/>
<!--[if lte IE 9]>
	<link href="assets/plugins/codrops-dialogFx/dialog.ie.css" rel="stylesheet" type="text/css" media="screen" />
	<![endif]-->
<script >
window.onload = function(){
	 $(".widget-3 .metro").liveTile();
     $(".widget-7 .metro").liveTile();

     $('#datepicker-component').datepicker();
};
</script>

<script type="text/javascript">
/* <![CDATA[ */
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-56895490-1']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

/* ]]> */
</script>
</head>
<body class="fixed-header dashboard">
 


<%@ include file = "/WEB-INF/bloodbank/leftmenu.jsp" %>
 
<div class="page-container ">
<%@ include file = "/WEB-INF/bloodbank/Header.jsp" %>
 
 
<div class="page-content-wrapper ">
 
<div class="content sm-gutter">
          <!-- START CONTAINER FLUID -->
          <div class="container-fluid padding-25 sm-padding-10 bg-white">
            
            <div class="row">
            
            <div class="panel panel-transparent">
              <div class="panel-heading">
                <div class="panel-title">Search Result
                </div>
                <div class="pull-right">
                  <div class="col-xs-12">
                    <input type="text" id="search-table" class="form-control pull-right" placeholder="Search">
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="panel-body">
                <table class="table table-hover demo-table-search" id="tableWithSearch">
                  <thead>
                    <tr>
                      <th>Name</th>
                      <th>Age</th>
                      <th>city</th>
                      <th>Status</th>
                      <th>Last donated</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                  
                  <c:forEach var="data" items="${ListOfdonors}">  
					<tr>
                      <td class="v-align-middle semi-bold">
                        <p>${data.value[0]}</p>
                      </td>
                      
                      <td class="v-align-middle">
                        <p>${data.value[1]}</p>
                      </td>
                      <td class="v-align-middle">
                        <p>${data.value[2]}</td>
                      <td class="v-align-middle">
                        <p>Eligible</p>
                    <td class="v-align-middle semi-bold">
                        <p>${data.value[3]}</p>
                      </td>
                    </tr>
					
					</c:forEach>
					
                    <!-- <tr>
                      <td class="v-align-middle semi-bold">
                        <p>Jackson Roy</p>
                      </td>
                      
                      <td class="v-align-middle">
                        <p>32</p>
                      </td>
                      <td class="v-align-middle">
                        <p>Thunder Bay</td>
                      <td class="v-align-middle">
                        <p>Eligible</p>
                    <td class="v-align-middle semi-bold">
                        <p>April 13,2014 10:13</p>
                      </td>
                    </tr>
                    <tr>
                      <td class="v-align-middle semi-bold">
                        <p>Luis Brown</p>
                      </td>
                      
                      <td class="v-align-middle">
                        <p>55</p>
                      </td>
                      <td class="v-align-middle">
                        <p>Thunder Bay</td>
                      <td class="v-align-middle">
                        <p>Eligible</p>
                    <td class="v-align-middle semi-bold">
                        <p>January 1,2016 10:13</p>
                      </td>
                    </tr>
                    <tr> -->            
             </tbody>
                </table>
              </div>
            </div>
                 
			</div>
          <!-- END CONTAINER FLUID -->
        </div>
        <!-- END PAGE CONTENT -->
        <!-- START COPYRIGHT -->
        <!-- START CONTAINER FLUID -->
        
        <!-- END COPYRIGHT -->
      </div>
 
 
 
 
<div class="container-fluid container-fixed-lg footer">
<div class="copyright sm-text-center">
<p class="small no-margin pull-left sm-pull-reset">
<span class="hint-text">Copyright &copy; 2017 </span>
<span class="font-montserrat">REVOX</span>.
<span class="hint-text">All rights reserved. </span>
<span class="sm-block"><a href="#" class="m-l-10 m-r-10">Terms of use</a> | <a href="#" class="m-l-10">Privacy Policy</a></span>
</p>
<p class="small no-margin pull-right sm-pull-reset">
<a href="#">Hand-crafted</a> <span class="hint-text">&amp; Made with Love ®</span>
</p>
<div class="clearfix"></div>
</div>
</div>
 
</div>
 
</div>
 
 
 
 
<div class="overlay hide" data-pages="search">
 
<div class="overlay-content has-results m-t-20">
 
<div class="container-fluid">
 
<img class="overlay-brand" src="assets/img/1.png" alt="logo" data-src="assets/img/1.png" data-src-retina="assets/img/1.png" width="40" height="25">
 
 
<a href="#" class="close-icon-light overlay-close text-black fs-16">
<i class="pg-close"></i>
</a>
 
</div>
 
<div class="container-fluid">
 
<input id="overlay-search" class="no-border overlay-search bg-transparent" placeholder="Search..." autocomplete="off" spellcheck="false">
<br>
<div class="inline-block">
<div class="">

<label for="checkboxn"><i class="fa fa-search"></i> Search by name...</label>
</div>
</div>
 
</div>
 
<div class="container-fluid">
<span>
<strong>suggestions :</strong>
</span>
<span id="overlay-suggestions"></span>
<br>
<div class="search-results m-t-40">
<p class="bold">Search Results</p>
<div class="row">
<div class="col-md-6">
<div id="custom-search-result" style=""> 
<div class="">
 
<!-- <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
<div>
<img width="50" height="50" src="assets/img/profiles/avatar.jpg" data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">
</div>
</div>
 --> 
<!-- <div class="p-l-10 inline p-t-5">
<h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> on pages</h5>
<p class="hint-text">via john smith</p>
</div> -->
</div>
 
<div class="">
<div class="p-l-10 inline p-t-5">
<h5 class="m-b-5"><span class="semi-bold result-name"></span> </h5>
</div>
</div>
</div> 
</div>
</div>
</div>
</div>
 
</div>
 
</div>
 
 
<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/modernizr.custom.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/plugins/boostrapv3/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-bez/jquery.bez.min.js"></script>
<script src="assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-actual/jquery.actual.min.js"></script>
<script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-select2/select2.min.js"></script>
<script type="text/javascript" src="assets/plugins/classie/classie.js"></script>
<script src="assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
<script src="assets/plugins/nvd3/src/utils.js" type="text/javascript"></script>
<script src="assets/plugins/nvd3/src/tooltip.js" type="text/javascript"></script>
<script src="assets/plugins/nvd3/src/interactiveLayer.js" type="text/javascript"></script>
<script src="assets/plugins/nvd3/src/models/axis.js" type="text/javascript"></script>
<script src="assets/plugins/nvd3/src/models/line.js" type="text/javascript"></script>
<script src="assets/plugins/nvd3/src/models/lineWithFocusChart.js" type="text/javascript"></script>
<script src="assets/plugins/mapplic/js/hammer.js"></script>
<script src="assets/plugins/mapplic/js/jquery.mousewheel.js"></script>
<script src="assets/plugins/jquery-metrojs/MetroJs.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="pages/js/pages.min.js"></script>
 
 <!-- 
<script src="assets/js/dashboard.js" type="text/javascript"></script>
 --><script src="assets/js/scripts.js" type="text/javascript"></script>
 
<script src="assets/js/demo.js" type="text/javascript"></script>
<script>
		 window.intercomSettings = {
		   app_id: "xt5z6ibr"
		 };
		</script>
<script>(function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',intercomSettings);}else{var d=document;var i=function(){i.c(arguments)};i.q=[];i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://widget.intercom.io/widget/xt5z6ibr';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);}if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})()</script>
</body>

<!-- Mirrored from pages.revox.io/dashboard/latest/html/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 09 Jan 2016 18:26:17 GMT -->
</html>