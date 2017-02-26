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
$(function() {
	$("#checkAll").click(function () {
		alert();
	    $("input:checkbox").prop('checked', $(this).prop("checked"));
	});
});
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

</head>
<body class="fixed-header ">


	<%@ include file="/WEB-INF/teacher/leftmenu.jsp"%>

	<div class="page-container ">
		<%@ include file="/WEB-INF/teacher/Header.jsp"%>


		<div class="page-content-wrapper ">

			<div class="content ">

				<div class="container-fluid container-fixed-lg">
					<form:form role="form" action="SubmitStudentInfo.htm" id="studentForm"
							commandName="studentmasterCommand">
						
					<div id="rootwizard" class="m-t-20">

						<ul
							class="nav nav-tabs nav-tabs-linetriangle nav-tabs-separator nav-stack-sm">
							<li class="active" style="width: 20%;"><a data-toggle="tab"
								href="#tab1"><i class="fa fa-edit tab-icon"></i> <span>Personal
										detail </span></a></li>

							<li class=""><a data-toggle="tab" href="#tab2"><i
									class="fa fa-edit tab-icon"></i> <span>Acedemic details</span></a></li>
							<!-- 		<li class=""><a data-toggle="tab" href="#tab4"><i
									class="fa fa-check tab-icon"></i> <span>Summary</span></a></li>
					 -->
						</ul>
							<div class="tab-content">
								<div class="tab-pane padding-20 active slide-left" id="tab1">
									<div class="row row-same-height">
										<div class="col-md-7 b-r b-dashed b-grey sm-b-b">
											<div class="padding-30 ">
												<div class="">

													<div class="">

														<div class="panel panel-default"
															style="background-color: beige">
															<div class="panel-heading">
																<div class="panel-title">Student's personal
																	details</div>
															</div>
															<div class="panel-body">
																<h5></h5>



																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>First Name</label>
																			<form:input path="firstname" id="firstname"
																				class="form-control" required="true" maxlength="20" />
																		</div>
																	</div>
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Last Name</label> <span class="help">e.g.
																				"Surname"</span>
																			<form:input path="lastname" id="lastname" maxlength="20"
																				class="form-control" required="true" />
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Contact Number1</label> <span class="help">"without
																				+91"</span>
																			<form:input path="contactnumber1" id="contactnumber1" maxlength="10"
																				class="form-control" required="true" />
																		</div>
																	</div>
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Contact number2</label> <span class="help">"without
																				+91"</span>
																			<form:input path="contactnumber2" id="contactnumber2" maxlength="10"
																				class="form-control" required="true" />
																		</div>
																	</div>
																</div>



																<div class="row">
																	<div class="col-sm-12">
																		<div class="form-group">
																			<label>Address</label> <span class="help">e.g.
																				"House number, Apertment/Society, Area"</span>
																			<form:input path="address" id="address" maxlength="150"
																				class="form-control" required="true" />
																		</div>
																	</div>
																</div>



																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Birthdate</label> <span class="help"></span>
																			<div id="datepicker-component"
																				class="input-group date col-sm-8">
																				<form:input path="dob" id="dob" class="form-control" />
																				<span class="input-group-addon"><i
																					class="fa fa-calendar"></i></span>
																			</div>
																		</div>
																	</div>


																	<div class="col-sm-6 m-t-5 p-t-5">
																		<div class="radio radio-primary">
																			<input type="radio"  value="boy" name="gender"
																				id="genderboy" /> <label for="genderboy" >Boy</label>
																			<input type="radio" value="girl" name="gender"
																				 id="gendergirl" /> <label
																				 for="gendergirl">Girl</label>
																		</div>

																	</div>
																</div>


															</div>
														</div>
													</div>

												</div>

											</div>
										</div>
										<div class="col-md-5">

											<div class="padding-30 ">
												<div class="">

													<div class="">

														<div class="panel panel-default"
															style="background-color: beige">
															<div class="panel-heading">
																<div class="panel-title">Parent's details</div>
															</div>
															<div class="panel-body">
																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Father's Name</label> 
																			<form:input  path="fathername" maxlength="20" 
																			id="fathername" class="form-control" required= "true"/>
																		</div>
																	</div>
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>mother's Name</label>
																			 <form:input path="mothername" class="form-control" maxlength="10" 
																			 required="true"/>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Contact Number1</label> <span class="help">"without
																				+91"</span> 
																				<form:input path="parentcontactnumber1" id="parentcontactnumber1"
																				 maxlength="10"  class="form-control"
																				required="true"/>
																		</div>
																	</div>
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Contact number2</label> <span class="help">"without
																				+91"</span> 
																				<form:input path="parentcontactnumber2" id="parentcontactnumber2" class="form-control"
																				 maxlength="10"/>
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
								<div class="tab-pane slide-left padding-20" id="tab2">
									<div class="row row-same-height">
										<div class="col-md-7 b-r b-dashed b-grey sm-b-b">
											<div class="padding-30 ">
												<div class="">

													<div class="">

														<div class="panel panel-default"
															style="background-color: beige">
															<div class="panel-heading">
																<div class="panel-title">Student's Academic
																	details</div>
															</div>
															<div class="panel-body">

																	<div class="form-group ">
																		<label>School</label> <form:select class="full-width" id="schoolname"
																			data-init-plugin="select2" path="schoolname"  items="${ListOfSchool}">

																		</form:select>
																	</div>

																	<div class="row">
																		<div class="col-sm-4">
																			<div class="form-group ">
																				<label>Board</label> <form:select class="full-width"
																				path="board" id="board" 	data-init-plugin="select2">
																				<form:option value="">Please Select</form:option>
																				<form:option value="gseb">G.S.E.B</form:option>
																				<form:option value="cbse">C.B.S.E.</form:option>
																				<form:option value="icse">I.C.S.E</form:option>
																				</form:select>
																			</div>
																		</div>
																		<div class="col-sm-4">
																			<div class="form-group">
																				<div class="form-group ">
																					<label>Standard</label> <form:select class="full-width"
																					path="standard" id="standard"	data-init-plugin="select2">
																				<form:option value="">Please Select</form:option>
																				<form:option value="5">5</form:option>
																				<form:option value="6">6</form:option>
																				<form:option value="7">7</form:option>
																				<form:option value="8">8</form:option>
																				<form:option value="9">9</form:option>
																				<form:option value="10">10</form:option>
																				<form:option value="11">11</form:option>
																				<form:option value="12">12</form:option>
																				
																				
																					</form:select>
																				</div>
																			</div>
																		</div>

																		<div class="col-sm-4">
																			<div class="form-group ">
																				<label>Medium</label>
																				 <form:select class="full-width"
																				path="medium"	data-init-plugin="select2">
																				<form:option value="">Please Select</form:option>
																				<form:option value="english">English</form:option>
																				<form:option value="gujarati">gujarati</form:option>
																				
																				</form:select>
																			</div>
																		</div>
																	</div>

																	<div class="row">
																		<div class="col-sm-3">
																			<div class="checkbox check-danger">
																				<input type="checkbox"   value="1" id="checkAll"/> <label
																					for="checkAll"><span style="font-weight: bold;">All</span></label>
																			</div>
																		</div>
																		</div>
																	
																	<div class="row">
																		<div class="col-sm-3">
																			<div class="checkbox check-primary">
																				<input type="checkbox" name="english"   value="1" id="english"/>
																				 <label
																					for="english">English </label>
																			</div>
																		</div>

																		<div class="col-sm-3">
																			<div class="checkbox check-success">
																				<input type="checkbox" name="gujarati"  value="1" id="gujarati"/> 
																				<label
																					for="gujarati">Gujarati </label>
																			</div>
																		</div>
																		<div class="col-sm-3">

																			<div class="checkbox check-primary">
																				<input type="checkbox" name="science"  value="1" id="science"/>
																				 <label
																					for="science">Science </label>
																			</div>
																		</div>
																		<div class="col-sm-3">

																			<div class="checkbox check-primary">
																				<input type="checkbox"   value="1" name="socialscience" id="socialscience"/> 
																				<label
																					for="socialscience">Social Science</label>
																			</div>
																		</div>
																	</div>

																	<div class="row">
																		<div class="col-sm-3">
																			<div class="checkbox check-primary">
																				<input type="checkbox"  value="1" name="maths" id="maths"/>
																				<label for="maths">Maths </label>
																			</div>
																		</div>

																		<div class="col-sm-3">
																			<div class="checkbox check-success">
																				<input type="checkbox" name="sanskrit"  value="1" id="sanskrit"/> 
																				<label
																					for="sanskrit">Sanskrit </label>
																			</div>
																		</div>
																		<div class="col-sm-3">

																			<div class="checkbox check-success">
																				<input type="checkbox"  value="1" id="hindi" name="hindi"/>
																				<label for="hindi">Hindi </label>
																			</div>
																		</div>
																		<div class="col-sm-3">

																			<div class="checkbox check-primary">
																				<input type="checkbox"  value="1" name="computer" id="computer"/>
																				<label for="computer">Computer</label>
																			</div>
																		</div>


																	</div>


																	<div class="row">
																		<div class="col-sm-5">
																			<div class="form-group">
																				<label>Form Number</label> 
																				<form:input path="formnumber"
																					class="form-control" required="true"/>
																			</div>
																		</div>
																		<div class="col-sm-7">
																			<div class="form-group">
																				<label>Batch</label> 
																				 <form:select class="full-width" id="batch"
																			data-init-plugin="select2" path="batch"  items="${ListOfBatches}">

																		</form:select>

																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label>Total Fees</label> 
																				<form:input path="totalfees" id="totalfees" maxlength="5"
																					class="form-control" required="true"/>
																			</div>
																		</div>
																		<div class="col-sm-6">
																			
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
								<div class=" bg-white">
									<ul class="pager wizard">
										<li class="next">
											<button
												class="btn btn-primary btn-cons btn-animated from-left fa fa-truck pull-right"
												type="button">
												<span>Next</span>
											</button>
										</li>
										<li class="next finish hidden">
											<button
												class="btn btn-primary btn-cons btn-animated from-left fa fa-cog pull-right"
												type="button" onclick="submitForm();">
												<span>Finish</span>	
											</button>
										</li>
										<li class="previous first hidden">
											<button
												class="btn btn-default btn-cons btn-animated from-left fa fa-cog pull-right"
												type="button">
												<span>First</span>
											</button>
										</li>
										<li class="previous">
											<button class="btn btn-default btn-cons pull-right"
												type="button">
												<span>Previous</span>
											</button>
										</li>
									</ul>
								</div>

							</div>
							
					</div>
					</form:form>
				</div>

			</div>




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
$(function() {
	$("#checkAll").click(function () {
		if($(this).prop("checked")){
			$("input:checkbox").prop('checked', $(this).prop("checked"));	
		}else{
			$("input:checkbox").removeAttr("checked");
		}
		
	});
});
function submitForm(){
$("#studentForm").submit();	
}
</script>
</body>


</html>