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
<script>
	window.onload = function() {
		$('#widget-installments').hide();
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
				<div class="jumbotron" data-pages="parallax">
					<div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
					<div class="inner">
					 
					<ul class="breadcrumb">
					<li>
					<a href="#">Dashboard</a>
					</li>
					<li><a href="#" class="active">Fees Master</a>
					</li>
					</ul>
					 
					<div class="row">
					</div>
					</div>
					</div>
					</div>
			

				<div class="container-fluid container-fixed-lg bg-white">
					<div class="row">
					
					
					<div class="col-md-6">
					 
					<div class="panel panel-default" style="background-color: beige">
					<div class="panel-heading">
					<div class="panel-title">
					Fees Collection Form
					</div>
					</div>
					<div class="panel-body">
					<h5>
					Select Student Name
					</h5>
					<form role="form" id="studentForm" action="feestransaction.htm" method="post">
						
					<div class="row">
					<div class="col-md-9">
					
					<div class="form-group ">
						<label>Name</label>
						 <select class="full-width" id="name" onclick="fillData();" name="name"
							data-init-plugin="select2"  >

							<option value="">Please Select</option>
        						<c:forEach var="item" items="${ListOfStudents}">
	 								<option value="${item.key}">${item.value}</option>
								</c:forEach>
						</select>
					</div>
					</div>
					<div class="col-md-3">
					<div class="form-group">
						<label>Standard : </label>
						<input type="text" id="standard"
							name="standard"	class="form-control" required/>
						</div>
					</div>
					</div>
					
	
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label>Recieved amount</label>
									<input type="text" id="amount"
										name="amount"  class="form-control" required/>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Pay Date</label> <span class="help"></span>
									<div id="datepicker-component"
										class="input-group date col-sm-8">
										<input type="text" id="paydate" name="paydate" class="form-control" />
										<span class="input-group-addon"><i
											class="fa fa-calendar"></i></span>
									</div>
								</div>
							</div>
						</div>
					
					<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Mode of Payment</label>
									<select class="full-width" id="modeofpayment" name="modeofpayment"
							data-init-plugin="select2"  >
							<option value="">Please Select</option>
							<option value="cash">Cash</option>
							<option value="checque">checque</option>
							<option value="dd">D.D</option>
						</select>

								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Description</label>
									<input type="text" id="description" name="description"
										class="form-control" required/>
								</div>
							</div>
						</div>
					<input type="hidden" id="outBal" name="outBal">
					<input type="hidden" id="totalfee" name="totalfee">
					<input type="hidden" id="fullname" name="fullname">
					<table class="table table-condensed">
							<tr>
								<td style="background-color: transparent;" class=" col-md-9"><span
									class="m-l-10 font-montserrat fs-13 all-caps">Total Fees</span> 
									<span class="m-l-10 " > </span></td>
								<td style="background-color: transparent;"  class=" col-md-3 text-right"><h5 class="text-primary no-margin font-montserrat">
								<span id="totalfees"> </span></h5></td>
							</tr>
							
							<tr >
							<td style="background-color: transparent;" class=" col-md-9"><span
									class="m-l-10 font-montserrat fs-13 all-caps">
									Outstanding</span>  </td>
								
								<td style="background-color: transparent;" class=" col-md-3 text-right">
									<h5 class="text-danger no-margin font-montserrat" id="outstandingfees"></h5>
								</td>
							</tr>
						</table>
							<div class="row m-b-30 m-t-10 pull-right" style="">
					<Button class="btn btn-primary btn-cons m-l-10 m-b-10" type="button" onclick="SubmitForm()"><i class="fa  fa-check"></i> <span class="bold">Accept</span>
					</button>
					
					 </div>

							</form>
						</div>
					</div>
					
					
					
					 
					</div>
					
					<div class="col-md-6">
					<div class="widget-11-2 panel border panel-condensed no-margin widget-loader-circle" id="widget-installments" >
						<div class="padding-25">
						<div class="pull-left">
						<h2 class="text-success no-margin">Fees paid</h2>
						<p class="no-margin"> Till date</p>
						</div>
						<h3 class="pull-right semi-bold"><sup>
						<small class="semi-bold" ><i class="fa fa-inr"></i></small>
						</sup> <span id="paidfees"></span>	
						</h3>
						<div class="clearfix"></div>
						</div>
						<div class="auto-overflow widget-11-2-table  scrollable" style="height: 100 px;">
						<table class="table table-condensed table-hover">
						<tbody id="InstallmentHistory">
						
						</tbody>
						</table>
						</div>
						<div class="padding-25">
						<p class="small no-margin">
						<a href="#"><i class="fa fs-16 fa-arrow-circle-o-down text-success m-r-10"></i></a>
						<span class="hint-text " >Show more details of <span id="showmoretext" ></span> </span>
						</p>
						</div>
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
function fillData(){
	//ajax
	$('#widget-installments').show();
	var StudentId = $("#name").val();
	$.ajax({
		
		type: "POST",
		 url: "populateStudentDetails.htm",
		 data:{data:StudentId},
	       error: function(){
	    	 
	       },
	       beforeSend:function(){},
	       success: function(xml){
	    	   $(xml).find("dropdownlist").each(function()
			        	{
	   	   var formOptions='';	   
	   	   $(this).find("option").each(function()
			        	{
	   		   		formOptions=$(this).attr("value");
			        	});
	   	   
	   	   var arrayData = formOptions.split("/");
	    	
	   	   if((arrayData[0]=="")){
	   			
	 	   		$('#totalfees').val('');
	 	   		$('#standard').val('');
	   		 	  $('#id').focus('');
	   		 	 $('#alert').show();
	   		  $('#save').attr('disabled','disabled');
	   		
	   	   }
	   	   else{
	   		   	var inrtag = '<sup><small class="semi-bold" ><i class="fa fa-inr"></i></small> </sup>';
	   		   		$('#totalfees').html(inrtag+arrayData[1]);
		    	   $('#standard').val(arrayData[2]);
		    	   $('#totalfee').val(arrayData[1]);
			    	$('#fullname').val(arrayData[0]);
		    	   $('#outBal').val(arrayData[3]);
		    	   $('#outstandingfees').html(inrtag+arrayData[3]);
		    	   $('#paidfees').html(arrayData[4]);
		    	   $('#showmoretext').html(arrayData[0]);
		    	    getInstallmentHistory(); 
	   	   }
	   	  }); 
	    	  
	    	
	       },
});	//end of ajax
}
function getInstallmentHistory(){

	 var StudentId = $('#name').val();

	$.ajax({
			
			type: "POST",
			 url: "populateAllInstallments.htm",
			 data:{data:StudentId},
		       error: function(){
		    	 alert("alert error");
		    	   $('#save').attr('disabled','disabled');
		       },
		       beforeSend:function(){
		    	   
		       },
		       success: function(xml){
		    	   var formOptions='';
		    	   $(xml).find("dropdownlist").each(function()
				        	{
		   	   var i = 1;
		   	   $(this).find("option").each(function()
				        	{
		   		   		formOptions=formOptions+'<tr>'
		   		   		+'<td class="font-montserrat all-caps fs-12 col-lg-6">Installment '+i+'</td>'+
		   		   		'<td class="text-right b-r b-dashed b-grey col-lg-3"> <span class="hint-text small"> '
		   		   		+$(this).attr("value").split("/")[0]+'</span></td>'+
		   		   		'<td class="col-lg-3"> <span class="font-montserrat fs-18">'
		   		   		+$(this).attr("value").split("/")[1]+'</span></td>'
		   		   		+'</tr>';
				        	i=i+1;
				        	});
		   	   
				        	
				        	});
		       $(xml).find("dropdownlist1").each(function()
				        	{
		   	   $(this).find("option").each(function()
				        	{ 
		   		   			/* formOptions =formOptions+'<tr><td colspan="2"><label style="float:right; color: #aa1010;">Total Amounts</label></td><td>'+$(this).attr("value").split("/")[2]+'</td></tr>';
				        	 */formOptions1 = '<tr><td>Total Paid Fees</td><td>'+$(this).attr("value").split("/")[2]+'</td></tr><tr><td>Outstanding Amount</td><td>'+$(this).attr("value").split("/")[1]+'</td></tr><tr><td>Total Anual fees</td><td>'+$(this).attr("value").split("/")[0]+'</td></tr>';
/* 				        	$('#dateLabel').html('Date&nbsp;:&nbsp;'+$(this).attr("value").split("/")[3]);
				        	$('#TransIdLabel').html('Last Transaction ID&nbsp;:&nbsp;'+$('#transId').val());
*/				        	});
		   	});
	
		       $('#InstallmentHistory').html(formOptions);
		       /* $('#totalfeesTable').html(formOptions1); */
		       
	       },
   });	//end of ajax
}
function SubmitForm(){
	
$("#studentForm").submit();	
}
</script>
</body>


</html>