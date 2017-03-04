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
<script type="text/javascript">
    document.getElementById("inventory").onclick = function () {
        location.href = "inventory.jsp";
    };
</script>
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
          <div class="container-fluid padding-25 sm-padding-10">
            
            <div class="row">
            <div class="col-md-4">
            <div class="panel  bg-warning" >
                  <div class="panel-heading">
                    <div class="panel-title">
                      Option one
                    </div>
                  </div>
                  <div class="panel-body">
                    <h5>
                             Search donors 
                                </h5>
                    <form role="form" id="perForm" action="searchdonorfromhistory.htm" method="post">
                      <div class="form-group">
                        <label>Blood donors :</label>
                        <span class="help">e.g. "Bill Gates" or blood group e.g "A+"</span>
                        <input type="text" id="donorName" name="donorName" class="form-control" required>
                      </div>
                      <button class="btn btn-primary btn-cons " type="submit">Search</button>
                         
                    </form>
                  </div>
                </div>
                <!-- END PANEL -->
            </div>
            <div class="col-md-4">
            <div class="panel  bg-primary" style="">
                  <div class="panel-heading">
                    <div class="panel-title">
                      Option two
                    </div>
                  </div>
                  <div class="panel-body">
                    <h5 class="text-white">
                                    Manage Inventory
                                </h5>
                    <form role="form">
                      <div class="form-group">
                        <p>Manage or discard expired blood</p>
                        <p>Blood Issuuance </p>
                        <span class="help"></span>
                        <input type="email" style="display: none;" class="form-control" required>
                      </div>
                      <button class="btn btn-warning btn-cons">Manage</button>

    </form>
  </div>
</div>
<!-- END PANEL -->
            </div>
            
</div>
<div class="row">
<div class=" col-xlg-3">
                <div class="ar-2-3">
                  <!-- START WIDGET -->
 <div class="widget-11 panel no-border  no-margin widget-loader-bar">
   <div class="panel-heading ">
     <div class="panel-title">Today's sales
     </div>
     <div class="panel-controls">
       <ul>
         <li><a data-toggle="refresh" class="portlet-refresh text-black" href="#"><i class="portlet-icon portlet-icon-refresh"></i></a>
         </li>
       </ul>
     </div>
   </div>
   <div class="p-l-25 p-r-25 p-b-20">
     <div class="pull-left">
       <h2 class="text-success no-margin">webarch</h2>
     </div>
     <h3 class="pull-right semi-bold"><sup><small class="semi-bold">$</small></sup> 102,967</h3>
     <div class="clearfix"></div>
   </div>
   <div class="widget-11-table auto-overflow">
     <table class="table table-condensed table-hover">
       <tbody>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">dewdrops</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18">$27</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">johnsmith</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18 text-primary">$1000</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">janedrooler</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18">$27</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">johnsmith</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18 text-primary">$1000</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">dewdrops</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18">$27</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">johnsmith</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18 text-primary">$1000</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">dewdrops</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18">$27</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">johnsmith</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18 text-primary">$1000</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">dewdrops</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18">$27</span>
           </td>
         </tr>
         <tr>
           <td class="font-montserrat all-caps fs-12">Purchase CODE #2345</td>
           <td class="text-right">
             <span class="hint-text small">johnsmith</span>
           </td>
           <td class="text-right b-r b-dashed b-grey">
             <span class="hint-text small">Qty 1</span>
           </td>
           <td>
             <span class="font-montserrat fs-18 text-primary">$1000</span>
           </td>
         </tr>
       </tbody>
     </table>
   </div>
   <div class="padding-25">
     <p class="small no-margin">
       <a href="#"><i class="fa fs-16 fa-arrow-circle-o-down text-success m-r-10"></i></a>
       <span class="hint-text ">Show more details of APPLE . INC</span>
     </p>
   </div>
 </div>
 <!-- END WIDGET -->
                </div>
              </div>

</div>


		<div class="row" style="display: none;">          
 <div class="col-md-8 col-lg-5 col-xlg-5">
<!-- START WIDGET -->
    <div class="widget-17 panel  no-border no-margin widget-loader-circle">
      <div class="panel-heading">
        <div class="panel-title">
          <i class="pg-map"></i> California, USA
          <span class="caret"></span>
        </div>
        <div class="panel-controls">
          <ul>
            <li class="">
              <div class="dropdown">
                <a data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                  <i class="portlet-icon portlet-icon-settings"></i>
                </a>
                <ul class="dropdown-menu pull-right" role="menu">
                  <li><a href="#">AAPL</a>
                  </li>
                  <li><a href="#">YHOO</a>
                  </li>
                  <li><a href="#">GOOG</a>
                  </li>
                </ul>
              </div>
            </li>
            <li>
              <a data-toggle="refresh" class="portlet-refresh text-black" href="#"><i class="portlet-icon portlet-icon-refresh"></i></a>
            </li>
          </ul>
        </div>
      </div>
      <div class="panel-body">
        <div class="p-l-5">
          <div class="row">
            <div class="col-md-12 col-xlg-6">
              <div class="row m-t-20">
                <div class="col-md-5">
                  <h4 class="no-margin">Monday</h4>
                  <p class="small hint-text">9th August 2014</p>
                </div>
                <div class="col-md-7">
                  <div class="pull-left">
                    <p class="small hint-text no-margin">Currently</p>
                    <h4 class="text-danger bold no-margin">32°
                <span class="small">/ 30C</span>
            </h4>
                  </div>
                  <div class="pull-right">
                    <canvas height="64" width="64" class="clear-day"></canvas>
                  </div>
                </div>
              </div>
              <h5>Feels like
    <span class="semi-bold">rainy</span>
</h5>
              <p>Weather information</p>
              <div class="widget-17-weather">
                <div class="row">
                  <div class="col-sm-6 p-r-10">
                    <div class="row">
                      <div class="col-md-12">
                        <p class="pull-left">Wind</p>
                        <p class="pull-right bold">11km/h</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <p class="pull-left">Sunrise</p>
                        <p class="pull-right bold">05:20</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <p class="pull-left">Humidity</p>
                        <p class="pull-right bold">20%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <p class="pull-left">Precipitation</p>
                        <p class="pull-right bold">60%</p>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-6 p-l-10">
                    <div class="row">
                      <div class="col-md-12">
                        <p class="pull-left">Sunset</p>
                        <p class="pull-right bold">21:05</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <p class="pull-left">Visibility</p>
                        <p class="pull-right bold">21km</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row m-t-10 timeslot">
                <div class="col-xs-2 p-t-10 text-center">
                  <p class="small">13:30</p>
                  <canvas height="25" width="25" class="partly-cloudy-day"></canvas>
                  <p class="text-danger bold">30°C</p>
                </div>
                <div class="col-xs-2 p-t-10 text-center">
                  <p class="small">14:00</p>
                  <canvas height="25" width="25" class="cloudy"></canvas>
                  <p class="text-danger bold">30°C</p>
                </div>
                <div class="col-xs-2 p-t-10 text-center">
                  <p class="small">14:30</p>
                  <canvas height="25" width="25" class="rain"></canvas>
                  <p class="text-danger bold">30°C</p>
                </div>
                <div class="col-xs-2 p-t-10 text-center">
                  <p class="small">15:00</p>
                  <canvas height="25" width="25" class="sleet"></canvas>
                  <p class="text-danger bold">30°C</p>
                </div>
                <div class="col-xs-2 p-t-10 text-center">
                  <p class="small">15:30</p>
                  <canvas height="25" width="25" class="snow"></canvas>
                  <p class="text-danger bold">30°C</p>
                </div>
                <div class="col-xs-2 p-t-10 text-center">
                  <p class="small">16:00</p>
                  <canvas height="25" width="25" class="wind"></canvas>
                  <p class="text-danger bold">30°C</p>
                </div>
              </div>
            </div>
            <div class="col-xlg-6 visible-xlg">
              <div class="row">
                <div class="forecast-day col-md-6 text-center m-t-10 ">
                  <div class="bg-master-lighter p-b-10 p-t-10">
                    <h4 class="p-t-10 no-margin">Tuesday</h4>
                    <p class="small hint-text m-b-20">11th Augest 2014</p>
                    <canvas class="rain" width="64" height="64"></canvas>
                    <h5 class="text-danger">32°</h5>
                    <p>Feels like
                      <span class="bold">sunny</span>
                    </p>
                    <p class="small">Wind
                      <span class="bold p-l-20">11km/h</span>
                    </p>
                    <div class="m-t-20 block">
                      <div class="padding-10">
                        <div class="row">
                          <div class="col-md-6 text-center">
                            <p class="small">Noon</p>
                            <canvas class="sleet" width="25" height="25"></canvas>
                            <p class="text-danger bold">30°C</p>
                          </div>
                          <div class="col-md-6 text-center">
                            <p class="small">Night</p>
                            <canvas class="wind" width="25" height="25"></canvas>
                            <p class="text-danger bold">30°C</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 text-center m-t-10 ">
                  <div class="bg-master-lighter p-b-10 p-t-10">
                    <h4 class="p-t-10 no-margin">Wednesday</h4>
                    <p class="small hint-text m-b-20">11th Augest 2014</p>
                    <canvas class="rain" width="64" height="64"></canvas>
                    <h5 class="text-danger">32°</h5>
                    <p>Feels like
                      <span class="bold">sunny</span>
                    </p>
                    <p class="small">Wind
                      <span class="bold p-l-20">11km/h</span>
                    </p>
                    <div class="m-t-20 block">
                      <div class="padding-10">
                        <div class="row">
                          <div class="col-md-6 text-center">
                            <p class="small">Noon</p>
                            <canvas class="sleet" width="25" height="25"></canvas>
                            <p class="text-danger bold">30°C</p>
                          </div>
                          <div class="col-md-6 text-center">
                            <p class="small">Night</p>
                            <canvas class="wind" width="25" height="25"></canvas>
                            <p class="text-danger bold">30°C</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END WIDGET -->
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
<span class="hint-text">Copyright &copy; 2014 </span>
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
 
 
<div id="quickview" class="quickview-wrapper" data-pages="quickview" style="display:  none;">
 
<ul class="nav nav-tabs">
<li class="">
<a href="#quickview-notes" data-toggle="tab">Notes</a>
</li>
<li>
<a href="#quickview-alerts" data-toggle="tab">Alerts</a>
</li>
<li class="active">
<a href="#quickview-chat" data-toggle="tab">Chat</a>
</li>
</ul>
<a class="btn-link quickview-toggle" data-toggle-element="#quickview" data-toggle="quickview"><i class="pg-close"></i></a>
 
<div class="tab-content">
 
<div class="tab-pane fade  in no-padding" id="quickview-notes">
<div class="view-port clearfix quickview-notes" id="note-views">
 
<div class="view list" id="quick-note-list">
<div class="toolbar clearfix">
<ul class="pull-right ">
<li>
<a href="#" class="delete-note-link"><i class="fa fa-trash-o"></i></a>
</li>
<li>
<a href="#" class="new-note-link" data-navigate="view" data-view-port="#note-views" data-view-animation="push"><i class="fa fa-plus"></i></a>
</li>
</ul>
<button class="btn-remove-notes btn btn-xs btn-block hide"><i class="fa fa-times"></i> Delete</button>
</div>
<ul>
 
<li data-noteid="1">
<div class="left">
 
<div class="checkbox check-warning no-margin">
<input id="qncheckbox1" type="checkbox" value="1">
<label for="qncheckbox1"></label>
</div>
 
 
<p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
 
</div>
 
<div class="right pull-right">
 
<span class="date">12/12/14</span>
<a href="#" data-navigate="view" data-view-port="#note-views" data-view-animation="push"><i class="fa fa-chevron-right"></i></a>
 
</div>
 
</li>
 
 
<li data-noteid="2">
<div class="left">
 
<div class="checkbox check-warning no-margin">
<input id="qncheckbox2" type="checkbox" value="1">
<label for="qncheckbox2"></label>
</div>
 
 
<p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
 
</div>
 
<div class="right pull-right">
 
<span class="date">12/12/14</span>
<a href="#"><i class="fa fa-chevron-right"></i></a>
 
</div>
 
</li>
 
 
<li data-noteid="2">
<div class="left">
 
<div class="checkbox check-warning no-margin">
<input id="qncheckbox3" type="checkbox" value="1">
<label for="qncheckbox3"></label>
</div>
 
 
<p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
 
</div>
 
<div class="right pull-right">
 
<span class="date">12/12/14</span>
<a href="#"><i class="fa fa-chevron-right"></i></a>
 
</div>
 
</li>
 
 
<li data-noteid="3">
<div class="left">
 
<div class="checkbox check-warning no-margin">
<input id="qncheckbox4" type="checkbox" value="1">
<label for="qncheckbox4"></label>
</div>
 
 
<p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
 
</div>
 
<div class="right pull-right">
 
<span class="date">12/12/14</span>
<a href="#"><i class="fa fa-chevron-right"></i></a>
 
</div>
 
</li>
 
 
<li data-noteid="4">
<div class="left">
 
<div class="checkbox check-warning no-margin">
<input id="qncheckbox5" type="checkbox" value="1">
<label for="qncheckbox5"></label>
</div>
 
 
<p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
 
</div>
 
<div class="right pull-right">
 
<span class="date">12/12/14</span>
<a href="#"><i class="fa fa-chevron-right"></i></a>
 
</div>
 
</li>
 
</ul>
</div>
 
<div class="view note" id="quick-note">
<div>
<ul class="toolbar">
<li><a href="#" class="close-note-link"><i class="pg-arrow_left"></i></a>
</li>
<li><a href="#" data-action="Bold"><i class="fa fa-bold"></i></a>
</li>
<li><a href="#" data-action="Italic"><i class="fa fa-italic"></i></a>
</li>
<li><a href="#" class=""><i class="fa fa-link"></i></a>
</li>
</ul>
<div class="body">
<div>
<div class="top">
<span>21st april 2014 2:13am</span>
</div>
<div class="content">
<div class="quick-note-editor full-width full-height js-input" contenteditable="true"></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
 
 
<div class="tab-pane fade no-padding" id="quickview-alerts">
<div class="view-port clearfix" id="alerts">
 
<div class="view bg-white">
 
<div class="navbar navbar-default navbar-sm">
<div class="navbar-inner">
 
<a href="javascript:;" class="inline action p-l-10 link text-master" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<i class="pg-more"></i>
</a>
 
<div class="view-heading">
Notications
</div>
 
<a href="#" class="inline action p-r-10 pull-right link text-master">
<i class="pg-search"></i>
</a>
 
</div>
</div>
 
 
<div data-init-list-view="ioslist" class="list-view boreded no-top-border">
 
<div class="list-view-group-container">
 
<div class="list-view-group-header text-uppercase">
Calendar
</div>
 
<ul>
 
<li class="alert-list">
 
<a href="javascript:;" class="" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<p class="col-xs-height col-middle">
<span class="text-warning fs-10"><i class="fa fa-circle"></i></span>
</p>
<p class="p-l-10 col-xs-height col-middle col-xs-9 overflow-ellipsis fs-12">
<span class="text-master">Jaimin Kansara Birthday</span>
</p>
<p class="p-r-10 col-xs-height col-middle fs-12 text-right">
<span class="text-warning">Today <br></span>
<span class="text-master">All Day</span>
</p>
</a>
 
 
</li>
 
 
<li class="alert-list">
 
<a href="#" class="" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<p class="col-xs-height col-middle">
<span class="text-warning fs-10"><i class="fa fa-circle"></i></span>
</p>
<p class="p-l-10 col-xs-height col-middle col-xs-9 overflow-ellipsis fs-12">
<span class="text-master">Meeting at 2:30</span>
</p>
<p class="p-r-10 col-xs-height col-middle fs-12 text-right">
<span class="text-warning">Today</span>
</p>
</a>
 
</li>
 
</ul>
</div>
 
<div class="list-view-group-container">
 
<div class="list-view-group-header text-uppercase">
Social
</div>
 
<ul>
 
<li class="alert-list">
 
<a href="javascript:;" class="p-t-10 p-b-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<p class="col-xs-height col-middle">
<span class="text-complete fs-10"><i class="fa fa-circle"></i></span>
</p>
<p class="p-l-10 col-xs-height col-middle col-xs-12 overflow-ellipsis fs-12">
<span class="text-master link">Jame Smith commented on your status<br></span>
<span class="text-master">“Perfection Simplified - Company Revox"</span>
</p>
</a>
 
</li>
 
 
<li class="alert-list">
 
<a href="javascript:;" class="p-t-10 p-b-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<p class="col-xs-height col-middle">
<span class="text-complete fs-10"><i class="fa fa-circle"></i></span>
</p>
<p class="p-l-10 col-xs-height col-middle col-xs-12 overflow-ellipsis fs-12">
<span class="text-master link">Jame Smith commented on your status<br></span>
<span class="text-master">“Perfection Simplified - Company Revox"</span>
</p>
</a>
 
</li>
 
</ul>
</div>
<div class="list-view-group-container">
 
<div class="list-view-group-header text-uppercase">
Sever Status
</div>
 
<ul>
 
<li class="alert-list">
 
<a href="#" class="p-t-10 p-b-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<p class="col-xs-height col-middle">
<span class="text-danger fs-10"><i class="fa fa-circle"></i></span>
</p>
<p class="p-l-10 col-xs-height col-middle col-xs-12 overflow-ellipsis fs-12">
<span class="text-master link">12:13AM GTM, 10230, ID:WR174s<br></span>
<span class="text-master">Server Load Exceeted. Take action</span>
</p>
</a>
 
</li>
 
</ul>
</div>
</div>
 
</div>
 
</div>
</div>
 
<div class="tab-pane fade in active no-padding" style="display: none;" id="quickview-chat">
<div class="view-port clearfix" id="chat">
<div class="view bg-white">
 
<div class="navbar navbar-default">
<div class="navbar-inner">
 
<a href="javascript:;" class="inline action p-l-10 link text-master" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<i class="pg-plus"></i>
</a>
 
<div class="view-heading">
Chat List
<div class="fs-11">Show All</div>
</div>
 
<a href="#" class="inline action p-r-10 pull-right link text-master">
<i class="pg-more"></i>
</a>
 
</div>
</div>
 
<div data-init-list-view="ioslist" class="list-view boreded no-top-border">
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">
a</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/1x.jpg" data-src="assets/img/profiles/1.jpg" src="assets/img/profiles/1x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">ava flores</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">b</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/2x.jpg" data-src="assets/img/profiles/2.jpg" src="assets/img/profiles/2x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">bella mccoy</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/3x.jpg" data-src="assets/img/profiles/3.jpg" src="assets/img/profiles/3x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">bob stephens</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">c</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/4x.jpg" data-src="assets/img/profiles/4.jpg" src="assets/img/profiles/4x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">carole roberts</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/5x.jpg" data-src="assets/img/profiles/5.jpg" src="assets/img/profiles/5x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">christopher perez</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">d</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/6x.jpg" data-src="assets/img/profiles/6.jpg" src="assets/img/profiles/6x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">danielle fletcher</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/7x.jpg" data-src="assets/img/profiles/7.jpg" src="assets/img/profiles/7x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">Jaimin  sutton</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">e</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/8x.jpg" data-src="assets/img/profiles/8.jpg" src="assets/img/profiles/8x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">earl hamilton</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/9x.jpg" data-src="assets/img/profiles/9.jpg" src="assets/img/profiles/9x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">elaine lawrence</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/1x.jpg" data-src="assets/img/profiles/1.jpg" src="assets/img/profiles/1x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">ellen grant</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/2x.jpg" data-src="assets/img/profiles/2.jpg" src="assets/img/profiles/2x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">erik taylor</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/3x.jpg" data-src="assets/img/profiles/3.jpg" src="assets/img/profiles/3x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">everett wagner</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">f</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/4x.jpg" data-src="assets/img/profiles/4.jpg" src="assets/img/profiles/4x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">freddie gomez</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">g</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/5x.jpg" data-src="assets/img/profiles/5.jpg" src="assets/img/profiles/5x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">glen jensen</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/6x.jpg" data-src="assets/img/profiles/6.jpg" src="assets/img/profiles/6x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">gwendolyn walker</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">j</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/7x.jpg" data-src="assets/img/profiles/7.jpg" src="assets/img/profiles/7x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">janet romero</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">k</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/8x.jpg" data-src="assets/img/profiles/8.jpg" src="assets/img/profiles/8x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">kim martinez</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">l</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/9x.jpg" data-src="assets/img/profiles/9.jpg" src="assets/img/profiles/9x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">lawrence white</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/1x.jpg" data-src="assets/img/profiles/1.jpg" src="assets/img/profiles/1x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">leroy bell</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/2x.jpg" data-src="assets/img/profiles/2.jpg" src="assets/img/profiles/2x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">letitia carr</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/3x.jpg" data-src="assets/img/profiles/3.jpg" src="assets/img/profiles/3x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">lucy castro</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">m</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/4x.jpg" data-src="assets/img/profiles/4.jpg" src="assets/img/profiles/4x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">mae hayes</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/5x.jpg" data-src="assets/img/profiles/5.jpg" src="assets/img/profiles/5x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">marilyn owens</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/6x.jpg" data-src="assets/img/profiles/6.jpg" src="assets/img/profiles/6x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">marlene cole</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/7x.jpg" data-src="assets/img/profiles/7.jpg" src="assets/img/profiles/7x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">marsha warren</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/8x.jpg" data-src="assets/img/profiles/8.jpg" src="assets/img/profiles/8x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">marsha dean</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/9x.jpg" data-src="assets/img/profiles/9.jpg" src="assets/img/profiles/9x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">mia diaz</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">n</div>
<ul>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/1x.jpg" data-src="assets/img/profiles/1.jpg" src="assets/img/profiles/1x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">noah elliott</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">p</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/2x.jpg" data-src="assets/img/profiles/2.jpg" src="assets/img/profiles/2x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">phyllis hamilton</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">r</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/3x.jpg" data-src="assets/img/profiles/3.jpg" src="assets/img/profiles/3x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">raul rodriquez</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/4x.jpg" data-src="assets/img/profiles/4.jpg" src="assets/img/profiles/4x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">rhonda barnett</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/5x.jpg" data-src="assets/img/profiles/5.jpg" src="assets/img/profiles/5x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">roberta king</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">s</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/6x.jpg" data-src="assets/img/profiles/6.jpg" src="assets/img/profiles/6x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">scott armstrong</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/7x.jpg" data-src="assets/img/profiles/7.jpg" src="assets/img/profiles/7x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">sebastian austin</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/8x.jpg" data-src="assets/img/profiles/8.jpg" src="assets/img/profiles/8x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">sofia davis</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">t</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/9x.jpg" data-src="assets/img/profiles/9.jpg" src="assets/img/profiles/9x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">terrance young</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/1x.jpg" data-src="assets/img/profiles/1.jpg" src="assets/img/profiles/1x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">theodore woods</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/2x.jpg" data-src="assets/img/profiles/2.jpg" src="assets/img/profiles/2x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">todd wood</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/3x.jpg" data-src="assets/img/profiles/3.jpg" src="assets/img/profiles/3x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">tommy jenkins</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
<div class="list-view-group-container">
<div class="list-view-group-header text-uppercase">w</div>
<ul>
 
<li class="chat-user-list clearfix">
<a data-view-animation="push-parrallax" data-view-port="#chat" data-navigate="view" class="" href="#">
<span class="col-xs-height col-middle">
<span class="thumbnail-wrapper d32 circular bg-success">
<img width="34" height="34" alt="" data-src-retina="assets/img/profiles/4x.jpg" data-src="assets/img/profiles/4.jpg" src="assets/img/profiles/4x.jpg" class="col-top">
</span>
</span>
<p class="p-l-10 col-xs-height col-middle col-xs-12">
<span class="text-master">wilma hicks</span>
<span class="block text-master hint-text fs-12">Hello there</span>
</p>
</a>
</li>
 
</ul>
</div>
</div>
</div>
 
<div class="view chat-view bg-white clearfix">
 
<div class="navbar navbar-default">
<div class="navbar-inner">
<a href="javascript:;" class="link text-master inline action p-l-10 p-r-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
<i class="pg-arrow_left"></i>
</a>
<div class="view-heading">
John Smith
<div class="fs-11 hint-text">Online</div>
</div>
<a href="#" class="link text-master inline action p-r-10 pull-right ">
<i class="pg-more"></i>
</a>
</div>
</div>
 
 
<div class="chat-inner" id="my-conversation">
 
<div class="message clearfix">
<div class="chat-bubble from-me">
Hello there
</div>
</div>
 
 
<div class="message clearfix">
<div class="profile-img-wrapper m-t-5 inline">
<img class="col-top" width="30" height="30" src="assets/img/profiles/avatar_small.jpg" alt="" data-src="assets/img/profiles/avatar_small.jpg" data-src-retina="assets/img/profiles/avatar_small2x.jpg">
</div>
<div class="chat-bubble from-them">
Hey
</div>
</div>
 
 
<div class="message clearfix">
<div class="chat-bubble from-me">
Did you check out Pages framework ?
</div>
</div>
 
 
<div class="message clearfix">
<div class="chat-bubble from-me">
Its an awesome chat
</div>
</div>
 
 
<div class="message clearfix">
<div class="profile-img-wrapper m-t-5 inline">
<img class="col-top" width="30" height="30" src="assets/img/profiles/avatar_small.jpg" alt="" data-src="assets/img/profiles/avatar_small.jpg" data-src-retina="assets/img/profiles/avatar_small2x.jpg">
</div>
<div class="chat-bubble from-them">
Yea
</div>
</div>
 
</div>
 
 
<div class="b-t b-grey bg-white clearfix p-l-10 p-r-10">
<div class="row">
<div class="col-xs-1 p-t-15">
<a href="#" class="link text-master"><i class="fa fa-plus-circle"></i></a>
</div>
<div class="col-xs-8 no-padding">
<input type="text" class="form-control chat-input" data-chat-input="" data-chat-conversation="#my-conversation" placeholder="Say something">
</div>
<div class="col-xs-2 link text-master m-l-10 m-t-15 p-l-10 b-l b-grey col-top">
<a href="#" class="link text-master"><i class="pg-camera"></i></a>
</div>
</div>
</div>
 
</div>
 
</div>
</div>
</div>
</div>
 
<div class="quickview-wrapper  builder hidden-sm hidden-xs" id="builder" style="display: none;">
<div class="p-l-30 p-r-30 ">
<a class="builder-close quickview-toggle pg-close" data-toggle="quickview" data-toggle-element="#builder" href="#"></a>
<a class="builder-toggle" data-toggle="quickview" data-toggle-element="#builder"><i class="pg pg-theme"></i></a>
<ul class="nav nav-tabs nav-tabs-simple nav-tabs-primary m-t-10">
<li class="active">
<a data-toggle="tab" href="#tabLayouts">Layouts</a>
</li>
<li>
<a data-toggle="tab" href="#tabThemes">Colors</a>
</li>
</ul>
<div class="tab-content m-b-30 p-l-30">
<div class="tab-pane active " id="tabLayouts">
<div class="scrollable">
<div class="p-l-10 p-r-50">
<h5 class="semi-bold">
Layout options
</h5>
<p class="no-margin">
Builder make it easier
</p>
<p class="small hint-text m-b-20">
Customize and Preview your dashboard.
</p>
<div class="row p-b-35">
<div class="col-xs-6 ">
<a class="btn-toggle-layout fs-12 active " data-action="menuDefault" href="#"><img alt="Menu divided icon" class="m-b-15" src="assets/img/demo/menu_divided_con.png" data-src="assets/img/demo/menu_divided_con.png" data-src-retina="assets/img/demo/menu_divided_con_2x.png" width="126" height="95">
<span class="text-dark m-t-5">Divided Header & Condensed / Quick
Menu</span></a>
</div>
<div class="col-xs-6">
<a class="btn-toggle-layout fs-12" data-action="menuBelow" href="#">
<img alt="Full header icon" class="m-b-15 " src="assets/img/demo/full_header_con.png" data-src-retina="assets/img/demo/full_header_con_2x.png" width="126" height="95"> <span class="text-dark m-t-5">Full Width Header & Condensed/ Quick
Menu</span></a>
</div>
</div>
<div class="row p-b-10 ">
<div class="col-xs-6">
<a class="btn-toggle-layout fs-12" data-action="menuPinned" href="#">
<img alt="Menu divided" class="m-b-15" src="assets/img/demo/menu_divided.png" data-src="assets/img/demo/menu_divided.png" data-src-retina="assets/img/demo/menu_divided_2x.png" width="126" height="95"> <span class="text-dark m-t-5">Divided Header & Fixed/Pinned Menu</span></a>
</div>
<div class="col-xs-6">
<a class="btn-toggle-layout fs-12" data-action="menuPinnedBelow" href="#"><img alt="Full header" class="m-b-15" src="assets/img/demo/full_header.png" data-src="assets/img/demo/full_header.png" data-src-retina="assets/img/demo/full_header_2x.png" width="126" height="95">
<span class="text-dark m-t-5">Full Width Header & Fixed/Pinned
Menu</span></a>
</div>
</div>
</div>
</div>
</div>
<div class="tab-pane " id="tabThemes">
<div class="scrollable">
<div class="p-l-10 p-r-50">
<h5 class="semi-bold">
Color Options
</h5>
<p class=" hint-text no-margin">
Color makes it different
</p>
<p class="small hint-text m-b-20">
Customize and Preview your dashboard.
</p>
<a href="#" class="btn-toggle-theme b-a b-grey active theme-selector m-b-30" data-action="default">
<img alt="Theme default" src="assets/img/demo/theme_default.png" class="image-responsive-height">
<div class="p-l-15 p-r-20 p-b-10 p-t-10">
<p class="no-margin">
<span class="block font-montserrat text-uppercase fs-12 bold">Default</span>
<span class="fs-11">pages default color palette</span>
</p>
</div>
</a>
<a href="#" class="btn-toggle-theme b-a b-grey theme-selector m-b-30" data-action="corporate">
<img alt="Theme corporate" src="assets/img/demo/theme_corporate.png" class="image-responsive-height">
<div class="p-l-15 p-r-20 p-b-10 p-t-10">
<p class="no-margin">
<span class="block font-montserrat text-uppercase fs-12 bold">Corporate</span>
<span class="fs-11">give your an a profesional look</span>
</p>
</div>
</a>
<a href="#" class="btn-toggle-theme b-a b-grey theme-selector m-b-30" data-action="retro">
<img alt="Theme retro" src="assets/img/demo/theme_retro.png" class="image-responsive-height">
<div class="p-l-15 p-r-20 p-b-10 p-t-10">
<p class="no-margin">
<span class="block font-montserrat text-uppercase fs-12 bold">Retro</span>
<span class="fs-11">calm color palette</span>
</p>
</div>
</a>
<a href="#" class="btn-toggle-theme b-a b-grey theme-selector m-b-30" data-action="unlax">
<img alt="Theme unlax" src="assets/img/demo/theme_unlax.png" class="image-responsive-height">
<div class="p-l-15 p-r-20 p-b-10 p-t-10">
<p class="no-margin">
<span class="block font-montserrat text-uppercase fs-12 bold">Unlax</span>
<span class="fs-11">calm color palette</span>
</p>
</div>
</a>
<a href="#" class="btn-toggle-theme b-a b-grey theme-selector m-b-30" data-action="vibes">
<img alt="Thmeme vibes" src="assets/img/demo/theme_vibes.png" class="image-responsive-height">
<div class="p-l-15 p-r-20 p-b-10 p-t-10">
<p class="no-margin">
<span class="block font-montserrat text-uppercase fs-12 bold">Vibes</span>
<span class="fs-11">calm color palette</span>
</p>
</div>
</a>
<a href="#" class="btn-toggle-theme b-a b-grey theme-selector m-b-30" data-action="abstract">
<img alt="Theme abstract" src="assets/img/demo/theme_abstract.png" class="image-responsive-height">
<div class="p-l-15 p-r-20 p-b-10 p-t-10">
<p class="no-margin">
<span class="block font-montserrat text-uppercase fs-12 bold">Abstract</span>
<span class="fs-11">calm color palette</span>
</p>
</div>
</a>
</div>
</div>
</div>
</div>
<div class="pull-bottom p-b-15 p-l-15 p-r-15 b-t b-grey p-t-15 m-l-15 m-r-15 bg-white builder-footer">
<div class="pull-left">
<span class="font-arial fs-12 hint-text">Toggle</span>
<span class="inline-block font-montserrat fs-12 bold">RTL</span>
<input id="rtl-switch" class="inline-block" type="checkbox" data-size="small" data-init-plugin="switchery"/>
</div>
<div class="pull-right">
<form action="http://104.197.142.33/builder_process.php" method="POST" id="exportForm">
<input type="hidden" name="layout" id="layout" value="1">
<input type="hidden" name="colors" id="colors" value="1">
<input type="hidden" name="content" id="content" value="1">
<button id="btnExport" class="btn btn-cons btn-primary">Export</button>
</form>
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
 
  
<script src="assets/js/dashboard.js" type="text/javascript"></script>
 <script src="assets/js/scripts.js" type="text/javascript"></script>
 
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