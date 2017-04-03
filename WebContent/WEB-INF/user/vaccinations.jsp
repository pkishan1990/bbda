<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>Blood Bank User </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="apple-touch-icon" href="pages/ico/60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="pages/ico/76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="pages/ico/120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="pages/ico/152.png">
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/nvd3/nv.d3.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/mapplic/css/mapplic.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" media="screen">
    <link href="assets/plugins/jquery-metrojs/MetroJs.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="pages/css/pages.css" rel="stylesheet" type="text/css" />
    <!--[if lte IE 9]>
        <link href="pages/css/ie9.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <!--[if lt IE 9]>
            <link href="assets/plugins/mapplic/css/mapplic-ie.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <script type="text/javascript">
    window.onload = function()
    {
      // fix for windows 8
      if (navigator.appVersion.indexOf("Windows NT 6.2") != -1)
        document.head.innerHTML += '<link rel="stylesheet" type="text/css" href="pages/css/windows.chrome.fix.css" />'
    }
    </script>
  </head>
  <body class="fixed-header  dashboard ">

 <%@ include file = "/WEB-INF/user/leftmenu.jsp" %>
 
<div class="page-container ">
<%@ include file = "/WEB-INF/bloodbank/Header.jsp" %>

       <div class="content sm-gutter">
          <!-- START CONTAINER FLUID -->
          <div class="container-fluid padding-25 sm-padding-10">
      <div id="wb-main-in">
      <div class="region-laurier-first">
        <div class="panel-pane pane-block pane-bean-print-page-button">
 <div class="pane-content">
    <section>
  <div class="field field--name-field-bean-wetkit-body field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><a href="#" onclick="window.print();" title="Print this page" class="cbs-print-page"><span>Print this page</span></a>
</div></div></div></section>
  </div>
</div>
<div class="panel-pane pane-node-title">
  
 <div class="pane-content">
    <h1 class="text-primary">Vaccinations</h1>
  </div>

  
  </div>
<div class="panel-pane pane-node-content">
  
      
  
  <div class="pane-content">
    <article id="node-449" role="article" class="node node--blood-page node--promoted node--full node--blood-page--full">
        <div class="node__content">
    <div class="field field--name-body field--type-text-with-summary field--label-hidden"><div class="field__items"><div class="field__item even"><h2>Can You Give Blood?</h2>

<p>The blood system in Canada is one of the safest in the world. Donors are selected based on eligibility criteria to protect both their own health and that of a person whose blood is transfused. Vaccines are among these factors. The list of the most common vaccines and corresponding exclusion periods shown below.&nbsp;</p>

<p>For a complete list of eligibility requirements, please call 1&nbsp;888&nbsp;2&nbsp;DONATE (1-888-236-6283)</p>

<h3 class="text-primary">Vaccines</h3>

<table border="1" cellpadding="1" cellspacing="1" class="cbs-table-simplify width-100"><tbody><tr><th class="cbs-sub-accent" width="50%"><strong><span class="whiteBold">Vaccine For:</span></strong></th>
			<th class="cbs-sub-accent" width="50%"><strong><span class="whiteBold">Deferral Period:</span></strong></th>
		</tr><tr><td>
				<p>Anthrax</p>
			</td>
			<td>
				<p>No deferral</p>
			</td>
		</tr><tr class="cbs-zebra"><td>
				<p>BCG</p>
			</td>
			<td>
				<p>6 weeks</p>
			</td>
		</tr><tr><td>
				<p>Chicken Pox (Varivax)</p>
			</td>
			<td>
				<p>3 months</p>
			</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Cholera (Metacol Berna)</p>
			</td>
			<td>
				<p>4 weeks</p>
			</td>
		</tr><tr><td>
				<p>Cholera, oral (Dukoral)</p>
			</td>
			<td>
				<p>No deferral</p>
			</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Diarrhea (traveller's), oral (Dukoral)</p>
			</td>
			<td>
				<p>No deferral</p>
			</td>
		</tr><tr><td>
				<p>Diphtheria (Tetanus, Pertussis (Boostrix)</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Diphtheria (Adacel, Boostrix)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Encephalitis, Japanese (Ixiaro)</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Flu Shot (influenza vaccine)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Hepatitis A (Avaxim, Epaxal, Havrix, Vaqta, Vivaxim)</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Hepatitis A and Hepatitis B (Twinrix)&nbsp;</p>
			</td>
			<td>4 weeks</td>
		</tr><tr><td>
				<p>Hepatitis B (Engerix B, Recombivax–HB)</p>
			</td>
			<td>4 weeks</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Herpes Zoster, that is Shingles (Zostavax)</p>
			</td>
			<td>3 months</td>
		</tr><tr><td>
				<p>Human Papillomavirus (Gardasil, Cervarix)</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Influenza, Flumist (intranasal)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Measles, Mumps, Rubella (MMR)&nbsp;</p>
			</td>
			<td>4 weeks</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Measles, that is Rubeola (MMR)</p>
			</td>
			<td>4 weeks</td>
		</tr><tr><td>
				<p>Meningococcal (Meningitec, Menjugate, Menactra, Menveo, Nimenrix, Bexsero)</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Mumps (MMR)&nbsp;</p>
			</td>
			<td>4 weeks</td>
		</tr><tr><td>
				<p>Paratyphoid</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Pertussis (Adacel, Boostrix)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Plague</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Pneumococcal (Pneumovax, Prevnar)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Polio (Sabin, oral)</p>
			</td>
			<td>6 weeks</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Polio, by injection (Salk, Imovax, IPV)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Rabies -&nbsp;Treatment after exposure with Immune Globulin</p>
			</td>
			<td>52 weeks</td>
		</tr><tr class="cbs-zebra"><td>Rabies -&nbsp;
				<p>Treatment after exposure (RabAvert only, no immune globulin given)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>Rabies -&nbsp;
				<p>Pre-exposure prophylaxis (RabAvert)</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Rocky Mountain Spotted Fever</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Rubella, that is German Measles (MMR)</p>
			</td>
			<td>4 weeks</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Tetanus (Adacel, Boostrix)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Tick Born Encephalitis (FSME-IMMUN)&nbsp;</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Typhoid (Typherix, Typhim Vi, Vivaxim)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Typhoid (Vivotif oral)</p>
			</td>
			<td>4 weeks</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Typhoid, Hepatitis A (Vivaxim)</p>
			</td>
			<td>No deferral</td>
		</tr><tr><td>
				<p>Typhus</p>
			</td>
			<td>No deferral</td>
		</tr><tr class="cbs-zebra"><td>
				<p>Yellow Fever</p>
			</td>
			<td>4 weeks</td>
		</tr></tbody></table><p>&nbsp;</p>
</div></div></div>  </div>
        <div class="clear"></div>
</article>
  </div>

  
  </div>
      </div>
      <div class="clear"></div>
    </div>
  
  </div>
  </div>
  <div class="clear"></div>
  </div>
        
          <!-- END CONTAINER FLUID -->
        </div>
        <!-- END PAGE CONTENT -->
        <!-- START COPYRIGHT -->
        <!-- START CONTAINER FLUID -->
        
        <!-- END COPYRIGHT -->
      </div>
      <!-- END PAGE CONTENT WRAPPER -->
    </div>
    <!-- END PAGE CONTAINER -->
    <!--START QUICKVIEW -->
    
<!-- END QUICKVIEW-->
    <!-- START OVERLAY -->
    <div class="overlay hide" data-pages="search">
      <!-- BEGIN Overlay Content !-->
      <div class="overlay-content has-results m-t-20">
        <!-- BEGIN Overlay Header !-->
        <div class="container-fluid">
          <!-- BEGIN Overlay Logo !-->
          <img class="overlay-brand" src="assets/img/logo.png" alt="logo" data-src="assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="78" height="22">
          <!-- END Overlay Logo !-->
          <!-- BEGIN Overlay Close !-->
          <a href="#" class="close-icon-light overlay-close text-black fs-16">
            <i class="pg-close"></i>
          </a>
          <!-- END Overlay Close !-->
        </div>
        <!-- END Overlay Header !-->
        <div class="container-fluid">
          <!-- BEGIN Overlay Controls !-->
          <input id="overlay-search" class="no-border overlay-search bg-transparent" placeholder="Search..." autocomplete="off" spellcheck="false">
          <br>
          <div class="inline-block">
            <div class="checkbox right">
              <input id="checkboxn" type="checkbox" value="1" checked="checked">
              <label for="checkboxn"><i class="fa fa-search"></i> Search within Thunder Bay</label>
            </div>
          </div>
          <div class="inline-block m-l-10">
            <p class="fs-13">Press enter to search</p>
          </div>
          <!-- END Overlay Controls !-->
        </div>
        <!-- BEGIN Overlay Search Results, This part is for demo purpose, you can add anything you like !-->
        <div class="container-fluid">
          <span>
                <strong>suggestions :</strong>
            </span>
          <span id="overlay-suggestions"></span>
          <br>
          <div class="search-results m-t-40">
            <p class="bold"> Search Results</p>
            <div class="row">
              <div class="col-md-6">
                <!-- BEGIN Search Result Item !-->
                <div class="">
                  <!-- BEGIN Search Result Item Thumbnail !-->
                  <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                    <div>
                      <img width="50" height="50" src="assets/img/profiles/avatar.jpg" data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">
                    </div>
                  </div>
                  <!-- END Search Result Item Thumbnail !-->
                  <div class="p-l-10 inline p-t-5">
                    <h5 class="m-b-5"><span class="semi-bold result-name">Regional Hospital</span> In Hospitals</h5>
                    <p class="hint-text"></p>
                  </div>
                </div>
                <!-- END Search Result Item !-->
                <!-- BEGIN Search Result Item !-->
                <div class="">
                  <!-- BEGIN Search Result Item Thumbnail !-->
                  <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                    <div>T</div>
                  </div>
                  <!-- END Search Result Item Thumbnail !-->
                  <div class="p-l-10 inline p-t-5">
                    <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> related topics</h5>
                    <p class="hint-text">via google</p>
                  </div>
                </div>
                <!-- END Search Result Item !-->
                <!-- BEGIN Search Result Item !-->
                
                </div>
                <!-- END Search Result Item !-->
              </div>
              <div class="col-md-6">
                <!-- BEGIN Search Result Item !-->
                <div class="">
                  <!-- BEGIN Search Result Item Thumbnail !-->
                  <div class="thumbnail-wrapper d48 circular bg-info text-white inline m-t-10">
                    <div><i class="fa fa-facebook large-text "></i>
                    </div>
                  </div>
                  <!-- END Search Result Item Thumbnail !-->
                  <div class="p-l-10 inline p-t-5">
                    <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> on facebook</h5>
                    <p class="hint-text">via facebook</p>
                  </div>
                </div>
                <!-- END Search Result Item !-->
                <!-- BEGIN Search Result Item !-->
                <div class="">
                  <!-- BEGIN Search Result Item Thumbnail !-->
                  <div class="thumbnail-wrapper d48 circular bg-complete text-white inline m-t-10">
                    <div><i class="fa fa-twitter large-text "></i>
                    </div>
                  </div>
                  <!-- END Search Result Item Thumbnail !-->
                  <div class="p-l-10 inline p-t-5">
                    <h5 class="m-b-5">Tweats on<span class="semi-bold result-name"> ice cream</span></h5>
                    <p class="hint-text">via twitter</p>
                  </div>
                </div>
                <!-- END Search Result Item !-->
                <!-- BEGIN Search Result Item !-->
                <div class="">
                  <!-- BEGIN Search Result Item Thumbnail !-->
                  <div class="thumbnail-wrapper d48 circular text-white bg-danger inline m-t-10">
                    <div><i class="fa fa-google-plus large-text "></i>
                    </div>
                  </div>
                  <!-- END Search Result Item Thumbnail !-->
                  <div class="p-l-10 inline p-t-5">
                    <h5 class="m-b-5">Circles on<span class="semi-bold result-name"> ice cream</span></h5>
                    <p class="hint-text">via google plus</p>
                  </div>
                </div>
                <!-- END Search Result Item !-->
              </div>
            </div>
          </div>
        </div>
        <!-- END Overlay Search Results !-->
      </div>
      <!-- END Overlay Content !-->
    </div>
    <!-- END OVERLAY -->
    <!-- BEGIN VENDOR JS -->
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
    <script src="assets/plugins/nvd3/lib/d3.v3.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/nv.d3.min.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/utils.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/tooltip.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/interactiveLayer.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/models/axis.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/models/line.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/models/lineWithFocusChart.js" type="text/javascript"></script>
    <script src="assets/plugins/mapplic/js/hammer.js"></script>
    <script src="assets/plugins/mapplic/js/jquery.mousewheel.js"></script>
    <script src="assets/plugins/mapplic/js/mapplic.js"></script>
    <script src="assets/plugins/rickshaw/rickshaw.min.js"></script>
    <script src="assets/plugins/jquery-metrojs/MetroJs.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="assets/plugins/skycons/skycons.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- END VENDOR JS -->
    <!-- BEGIN CORE TEMPLATE JS -->
    <script src="pages/js/pages.min.js"></script>
    <!-- END CORE TEMPLATE JS -->
    <!-- BEGIN PAGE LEVEL JS -->
    
    <script src="assets/js/scripts.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS -->
  </body>
</html>