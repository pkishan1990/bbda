<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<!-- Mirrored from pages.revox.io/dashboard/latest/html/form_wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 09 Jan 2016 18:29:01 GMT -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Mk- Admin Dashboard UI Kit </title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
<script type="text/javascript">

	
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
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/jquery-datatable/media/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jquery-datatable/extensions/FixedColumns/css/dataTables.fixedColumns.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/datatables-responsive/css/datatables.responsive.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
<link class="main-stylesheet" href="pages/css/pages.css" rel="stylesheet" type="text/css"/>
<!--[if lte IE 9]>
	<link href="assets/plugins/codrops-dialogFx/dialog.ie.css" rel="stylesheet" type="text/css" media="screen" />
	<![endif]-->

</head>
<body class="fixed-header ">


	<%@ include file="/WEB-INF/teacher/leftmenu.jsp"%>

	<div class="page-container ">
		<%@ include file="/WEB-INF/teacher/Header.jsp"%>


		<div class="page-content-wrapper ">

			<div class="content ">
				<div class="jumbotron" data-pages="parallax">
					<div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
					<div class="inner">
					 
					<ul class="breadcrumb">
					<li>
					<a href="#">Dashboard</a>
					</li>
					<li><a href="#" class="active">Batch Master</a>
					</li>
					</ul>
					 
					<div class="row">
					</div>
					</div>
					</div>
					</div>
			

				<div class="container-fluid container-fixed-lg bg-white">
					<div class="row">
					
					
					<div class="col-md-11">
					 
					<div class="panel panel-default" style="background-color: beige">
					<!--------------------------------------------------- --------------- -->

					<div id="rootwizard" class="m-t-50">

						<ul
							class="nav nav-tabs nav-tabs-linetriangle nav-tabs-separator nav-stack-sm">
							<li class="active"><a data-toggle="tab" href="#tab1"><i
									class="fa fa-tags tab-icon"></i> <span>Name</span></a></li>
							<li class=""><a data-toggle="tab" href="#tab2"><i
									class="fa fa-truck tab-icon"></i> <span>Add students</span></a></li>
							
						</ul>

						<div class="tab-content" style="background-color: beige">
							<div class="tab-pane padding-20 active slide-left" id="tab1">
								<div class="row row-same-height">
									<div class="col-md-5 b-r b-dashed b-grey sm-b-b">
										<div class="padding-30 m-t-50">
											<i class="fa fa-tags fa-2x hint-text"></i>
											<h2>Create New Batch</h2>
											<p>Add new batch to the system now </p>
											<p class="small hint-text">you can add students in this batch in next tab</p>
										</div>
									</div>
									<div class="col-md-7">
										<div class="padding-30">
											<form role="form" id="studentForm" action="newbatch.htm" method="post">
										<div class="row">
										<div class="col-md-6">
											<div class="form-group ">
												<label>Batch Name</label>
												<input type="text" id="batchname"
													name="batchname"	class="form-control" required/>
											</div>
										</div>
										</div>
										<input type="hidden" name="hiddenidstr" id="hiddenidstr">
			
										<div class="row">
											<div class="col-sm-9">
												<div class="form-group">
													<label>Batch Description</label>
													<input type="text" id="bdesc"
														name="bdesc"  class="form-control" required/>
												</div>
											</div>
										</div>
							
										<div class="row m-b-30 m-t-10 pull-left" style="">
											<Button class="btn btn-primary btn-cons m-b-10" type="button" onclick="SubmitForm()">
											<i class="fa  fa-check"></i> <span class="bold">Create</span>
											</button>
										 </div>
		
									</form>
							<br>
									<p class="hint">Click <span class="bold">Create</span> button to create a new batch  <br>
									or click <span class="bold"> Next </span>button to add students in this batch</p>
											
											
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane slide-left padding-20" id="tab2">
								<div class="row row-same-height">
									<div class="col-md-5 b-r b-dashed b-grey ">
										<div class="padding-30 m-t-50">
											<h2>Add students in batch</h2>
											<p>Select students from the list to add in this batch.</p>
											<p class="small hint-text">you can skip this step and add students later.</p>
										</div>
									</div>
									<div class="col-md-7">
									<div class="pull-right">
									<div class="col-xs-12">
									<input type="text" id="search-table" class="form-control pull-right" placeholder="Search">
									</div>
									</div>
									<div class="clearfix"></div>
									
						<table class="table table-hover" id="tableWithSearch">
								<thead>
													<tr>
													<th  style="width:4%">Select</th>
													<th style=" width:50%">Name</th>
													<th style="width:5%">Std</th>
													<th style="width:20%">Board</th>
													<th style="width:21%">Medium</th>
													</tr>
													</thead>
													<tbody>
													
													<c:forEach var="data" items="${ListOfStudents}">  
													<tr>
													<td class="v-align-middle ">
														<div class="checkbox ">
														<input type="checkbox" value="${data.key}" name="sid" id="${data.key}">
														<label for="${data.key}"></label>
														</div>
													</td>
													<td class="v-align-middle" >${data.value[0]}
													</td>
													<td class="v-align-middle" >${data.value[1]}
													</td>
													<td class="v-align-middle" >${data.value[2]}
													</td>
													<td class="v-align-middle" >${data.value[3]}
													</td>
													
													</tr>
													</c:forEach>
													
													</tbody>
																		
						</table>
									
									
												
												
									</div>
								</div>
							</div>
							<div class="padding-20 ">
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
											type="button" onclick="submitForm()">
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


					
					<!--------------------------------------------------- --------------- -->
					
					</div>
					
					
					
					 
					</div>
					
					
					</div>
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
<script src="assets/plugins/jquery-datatable/media/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-datatable/extensions/TableTools/js/dataTables.tableTools.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-datatable/media/js/dataTables.bootstrap.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-datatable/extensions/Bootstrap/jquery-datatable-bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/plugins/datatables-responsive/js/datatables.responsive.js"></script>
<script type="text/javascript" src="assets/plugins/datatables-responsive/js/lodash.min.js"></script>
<script src="assets/plugins/boostrap-form-wizard/js/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>

	<script src="pages/js/pages.min.js"></script>
	<!-- <script src="assets/js/datatables.js" type="text/javascript"></script> -->
	<script src="assets/js/form_wizard.js" type="text/javascript"></script>
	
	
	<script>
	window.onload = function() {

	    var initTableWithSearch = function() {
	        var table = $('#tableWithSearch');

	        var settings = {
	            "sDom": "<'table-responsive't><'row'<p i>>",
	            "sPaginationType": "bootstrap",
	            "destroy": true,
	            "autoWidth": false,
	            "paging": false,
	            "scrollCollapse": true,
	            	"iDisplayLength": 5,
	            "aoColumnDefs": [{
	                'bSortable': false,
	                'aTargets': [0]
	            }],
	            
	        };

	        table.dataTable(settings);

	        // search box for table
	        $('#search-table').keyup(function() {
	            table.fnFilter($(this).val());
	        });
	    }
	     initTableWithSearch(); 
	};

</script>
<script type="text/javascript">
function submitForm(){
	
	var checkboxes = document.getElementsByName('sid');
	var vals = "";
	for (var i=0, n=checkboxes.length;i<n;i++) {
	  if (checkboxes[i].checked) 
	  {
	  vals += ","+checkboxes[i].value;
	  }
	}
	if (vals) vals = vals.substring(1);
	$("#hiddenidstr").val(vals);

	$("#studentForm").submit();	

}
</script>	
</body>


</html>