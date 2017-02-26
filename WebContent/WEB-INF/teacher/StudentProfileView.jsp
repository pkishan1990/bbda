<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<!-- Mirrored from pages.revox.io/dashboard/latest/html/form_wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 09 Jan 2016 18:29:01 GMT -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Mk- Admin Dashboard UI Kit - Form Wizard</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
<script type="text/javascript">
	//<![CDATA[
	/* 	try {
	 if (!window.CloudFlare) {
	 var CloudFlare = [ {
	 verbose : 0,
	 p : 0,
	 byc : 0,
	 owlid : "cf",
	 bag2 : 1,
	 mirage2 : 0,
	 oracle : 0,
	 paths : {
	 cloudflare : "/cdn-cgi/nexp/dok3v=1613a3a185/"
	 },
	 atok : "0b6c9ac1c6f251f7c1536b463f33bdb8",
	 petok : "5eb3a107dd1adecf0b5f242f28f62addcdc8a08d-1452363939-1800",
	 zone : "revox.io",
	 rocket : "0",
	 apps : {
	 "ga_key" : {
	 "ua" : "UA-56895490-1",
	 "ga_bs" : "1"
	 }
	 },
	 sha2test : 0
	 } ];
	 !function(a, b) {
	 a = document.createElement("script"),
	 b = document.getElementsByTagName("script")[0],
	 a.async = !0,
	 a.src = "../../../../ajax.cloudflare.com/cdn-cgi/nexp/dok3v%3d38857570ac/cloudflare.min.js",
	 b.parentNode.insertBefore(a, b)
	 }()
	 }
	 } catch (e) {
	 };
	 *///]]>
</script>
<link rel="apple-touch-icon" href="pages/ico/60.png">
<link rel="apple-touch-icon" sizes="76x76" href="pages/ico/76.png">
<link rel="apple-touch-icon" sizes="120x120" href="pages/ico/120.png">
<link rel="apple-touch-icon" sizes="152x152" href="pages/ico/152.png">
<link rel="icon" type="image/x-icon" href="favicon.html" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta content="" name="description" />
<meta content="" name="author" />
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet"
	type="text/css" />
<link href="assets/plugins/boostrapv3/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/font-awesome/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css"
	rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/bootstrap-select2/select2.css"
	rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/switchery/css/switchery.min.css"
	rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
<link class="main-stylesheet" href="pages/css/pages.css"
	rel="stylesheet" type="text/css" />
<!--[if lte IE 9]>
	<link href="assets/plugins/codrops-dialogFx/dialog.ie.css" rel="stylesheet" type="text/css" media="screen" />
	<![endif]-->
<script type="text/javascript">
	/*  <![CDATA[ 
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-56895490-1' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();

	 ]]> */
</script>
<script>
	window.onload = function() {

		$('#datepicker-component').datepicker({
			format : 'dd/mm/yyyy'
		});
	};
</script>
<style type="text/css">

.profile-label tbody tr td {
    background: #fff;

    border-bottom: 1px solid rgba(100, 100,100, 0.2);
    border-top: 0px;
    padding: 7px;
    font-size: 15px;
}
.profile-label .label tbody tr td {
    background: #fff;

    border-bottom: 1px solid rgba(100, 100,100, 0.2);
    border-top: 0px;
    width: 25%;
    color:#525252
    padding: 7px;
    font-size: 15px;
}
.profile-label .data tbody tr td {
    background: #fff;

    border-bottom: 1px solid rgba(100, 100,100, 0.2);
    border-top: 0px;
    width: 75%;
    padding: 7px;
    font-size: 14px;
}
</style>
</head>
<body class="fixed-header ">


	<%@ include file="/WEB-INF/teacher/leftmenu.jsp"%>

	<div class="page-container ">
		<%@ include file="/WEB-INF/teacher/Header.jsp"%>


		<div class="page-content-wrapper ">

			<div class="content ">
				

				<div class="container-fluid container-fixed-lg bg-white" style="background-color: ">
					<div class="row">
					<div class="col-md-6 b-r b-dashed b-grey sm-b-b">
					<div class="panel panel-transparent">
							<div class="panel-body">
							<table class="table profile-label  " id="tableWithExportOptions">
							<thead>
							<tr > 
							<th colspan="2">Student's information</th>
							</tr>
							</thead>
							<tbody>
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label" style="width: 30%;"><span style="font-weight: bolder;">Name</span></td>
							<td style="text-align: left; "> ${studentmaster.fullname}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Contact:</span></td>
							<td>${studentmaster.contactnumber1} ; ${studentmaster.contactnumber2} </td>
							</tr>
							
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span style="font-weight: bolder;">Address:</span></td>
							<td>${studentmaster.address} </td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Birthdate:</span></td>
							<td>${DOB}</td>
							</tr>
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span style="font-weight: bolder;">Gender</span></td>
							<td>${studentmaster.gender}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Father's Name</span></td>
							<td>${studentmaster.fathername}</td>
							</tr>
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span style="font-weight: bolder;">Mother's Name</span></td>
							<td>${studentmaster.mothername}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Parents Contact:</span></td>
							<td>${studentmaster.parentcontactnumber1} ; ${studentmaster.parentcontactnumber2}</td>
							</tr>
							
							</tbody>
							</table>
							</div>
							</div>
					
					</div>
					<div class="col-md-6 ">
					<div class="panel panel-transparent">
							<div class="panel-body">
							<table class="table profile-label  " id="tableWithExportOptions">
							<thead>
							<tr > 
							<th colspan="2"># </th>
							</tr>
							</thead>
							<tbody>
							
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span style="font-weight: bolder;">School:</span></td>
							<td>${studentmaster.schoolname}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Standard:</span></td>
							<td>${studentmaster.standard}</td>
							</tr>
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span style="font-weight: bolder;">Board:</span></td>
							<td>${studentmaster.board}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Medium:</span></td>
							<td>${studentmaster.medium}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Subjects choosen:</span></td>
							<td>${Subjects}</td>
							</tr>
							<tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span style="font-weight: bolder;">Form No:</span></td>
							<td>${studentmaster.formnumber}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span style="font-weight: bolder;">Batch:</span></td>
							<td>${studentmaster.batch}</td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span class="text-primary" style="font-weight: bolder;">Total Fees:</span></td>
							<td>${studentmaster.totalfees}</td>
							</tr>
							
							<!-- <tr class="odd gradeX " style="width: ">
							<td class="profile-label"><span class="text-success" style="font-weight: bolder;">Paid:</span></td>
							<td></td>
							</tr>
							<tr class="even gradeC">
							<td class=""><span class="text-danger" style="font-weight: bolder;">Outstanding:</span></td>
							<td></td>
							</tr> -->
							</tbody>
							</table>
							</div>
							</div>
					
					</div>
															
					
					</div>
					<div class="row m-b-30" style="">
					<Button class="btn btn-info btn-cons m-l-30 m-b-10" type="button" onclick="SubmitForm()"><i class="fa  fa-arrow-left"></i> <span class="bold">Edit</span>
					</button>
					<a href="dashboard.htm" class="btn btn-primary btn-cons m-b-10" type="button"><i class="fa fa-check"></i> <span class="bold">Finish</span>
					</a>
					 </div>

					</div>

			</div>


<form action="EditStudentMasterDetails.htm" method="get" id="studentForm">
<input type="hidden" name="stdId" id="stdId">

</form>

			<div class="container-fluid container-fixed-lg footer">
				<div class="copyright sm-text-center">
					<p class="small no-margin pull-left sm-pull-reset">
						<span class="hint-text">Copyright &copy; 2014 </span> <span
							class="font-montserrat">REVOX</span>. <span class="hint-text">All
							rights reserved. </span> <span class="sm-block"><a href="#"
							class="m-l-10 m-r-10">Terms of use</a> | <a href="#"
							class="m-l-10">Privacy Policy</a></span>
					</p>
					<p class="small no-margin pull-right sm-pull-reset">
						<a href="#">Hand-crafted</a> <span class="hint-text">&amp;
							Made with Love ®</span>
					</p>
					<div class="clearfix"></div>
				</div>
			</div>

		</div>

	</div>


	


	<div class="overlay hide" data-pages="search">

		<div class="overlay-content has-results m-t-20">

			<div class="container-fluid">

				<img class="overlay-brand" src="assets/img/logo.png" alt="logo"
					data-src="assets/img/logo.png"
					data-src-retina="assets/img/logo_2x.png" width="78" height="22">


				<a href="#" class="close-icon-light overlay-close text-black fs-16">
					<i class="pg-close"></i>
				</a>

			</div>

			<div class="container-fluid">

				<input id="overlay-search"
					class="no-border overlay-search bg-transparent"
					placeholder="Search..." autocomplete="off" spellcheck="false">
				<br>
				<div class="inline-block">
					<div class="checkbox right">
						<input id="checkboxn" type="checkbox" value="1" checked="checked">
						<label for="checkboxn"><i class="fa fa-search"></i> Search
							within page</label>
					</div>
				</div>
				<div class="inline-block m-l-10">
					<p class="fs-13">Press enter to search</p>
				</div>

			</div>

			<div class="container-fluid">
				<span> <strong>suggestions :</strong>
				</span> <span id="overlay-suggestions"></span> <br>
				<div class="search-results m-t-40">
					<p class="bold">Pages Search Results</p>
					<div class="row">
						<div class="col-md-6">

							<div class="">

								<div
									class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
									<div>
										<img width="50" height="50"
											src="assets/img/profiles/avatar.jpg"
											data-src="assets/img/profiles/avatar.jpg"
											data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">
									</div>
								</div>

								<div class="p-l-10 inline p-t-5">
									<h5 class="m-b-5">
										<span class="semi-bold result-name">ice cream</span> on pages
									</h5>
									<p class="hint-text">via john smith</p>
								</div>
							</div>


							<div class="">

								<div
									class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
									<div>T</div>
								</div>

								<div class="p-l-10 inline p-t-5">
									<h5 class="m-b-5">
										<span class="semi-bold result-name">ice cream</span> related
										topics
									</h5>
									<p class="hint-text">via pages</p>
								</div>
							</div>


							<div class="">

								<div
									class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
									<div>
										<i class="fa fa-headphones large-text "></i>
									</div>
								</div>

								<div class="p-l-10 inline p-t-5">
									<h5 class="m-b-5">
										<span class="semi-bold result-name">ice cream</span> music
									</h5>
									<p class="hint-text">via pagesmix</p>
								</div>
							</div>

						</div>
						<div class="col-md-6">

							<div class="">

								<div
									class="thumbnail-wrapper d48 circular bg-info text-white inline m-t-10">
									<div>
										<i class="fa fa-facebook large-text "></i>
									</div>
								</div>

								<div class="p-l-10 inline p-t-5">
									<h5 class="m-b-5">
										<span class="semi-bold result-name">ice cream</span> on
										facebook
									</h5>
									<p class="hint-text">via facebook</p>
								</div>
							</div>


							<div class="">

								<div
									class="thumbnail-wrapper d48 circular bg-complete text-white inline m-t-10">
									<div>
										<i class="fa fa-twitter large-text "></i>
									</div>
								</div>

								<div class="p-l-10 inline p-t-5">
									<h5 class="m-b-5">
										Tweats on<span class="semi-bold result-name"> ice cream</span>
									</h5>
									<p class="hint-text">via twitter</p>
								</div>
							</div>


							<div class="">

								<div
									class="thumbnail-wrapper d48 circular text-white bg-danger inline m-t-10">
									<div>
										<i class="fa fa-google-plus large-text "></i>
									</div>
								</div>

								<div class="p-l-10 inline p-t-5">
									<h5 class="m-b-5">
										Circles on<span class="semi-bold result-name"> ice
											cream</span>
									</h5>
									<p class="hint-text">via google plus</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>

	</div>


	<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery/jquery-1.11.1.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/modernizr.custom.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/boostrapv3/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/jquery/jquery-easy.js"
		type="text/javascript"></script>
	<script src="assets/plugins/jquery-unveil/jquery.unveil.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/jquery-bez/jquery.bez.min.js"></script>
	<script src="assets/plugins/jquery-ios-list/jquery.ioslist.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/jquery-actual/jquery.actual.min.js"></script>
	<script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap-select2/select2.min.js"></script>
	<script type="text/javascript" src="assets/plugins/classie/classie.js"></script>
	<script src="assets/plugins/switchery/js/switchery.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="assets/plugins/dropzone/dropzone.min.js"></script>
	<script
		src="assets/plugins/boostrap-form-wizard/js/jquery.bootstrap.wizard.min.js"
		type="text/javascript"></script>
	<script
		src="assets/plugins/jquery-validation/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"
		type="text/javascript"></script>
	<script src="assets/plugins/moment/moment.min.js"></script>
		<script src="pages/js/pages.min.js"></script>


	<script src="assets/js/form_wizard.js" type="text/javascript"></script>
	
<script src="assets/js/datatables.js" type="text/javascript"></script>
	
	<script src="assets/js/scripts.js" type="text/javascript"></script>
	<script>
		/* window.intercomSettings = {
			app_id : "xt5z6ibr"
		}; */
	</script>
	<script>
		/* 	(function() {
				var w = window;
				var ic = w.Intercom;
				if (typeof ic === "function") {
					ic('reattach_activator');
					ic('update', intercomSettings);
				} else {
					var d = document;
					var i = function() {
						i.c(arguments)
					};
					i.q = [];
					i.c = function(args) {
						i.q.push(args)
					};
					w.Intercom = i;
					function l() {
						var s = d.createElement('script');
						s.type = 'text/javascript';
						s.async = true;
						s.src = 'https://widget.intercom.io/widget/xt5z6ibr';
						var x = d.getElementsByTagName('script')[0];
						x.parentNode.insertBefore(s, x);
					}
					if (w.attachEvent) {
						w.attachEvent('onload', l);
					} else {
						w.addEventListener('load', l, false);
					}
				}
			})() */
	</script>
	<script type="text/javascript">
function SubmitForm(){
	
	var ids = ${studentmaster.studentid};
	$("#stdId").val(ids);
	$("#studentForm").submit();
}
</script>
</body>


</html>