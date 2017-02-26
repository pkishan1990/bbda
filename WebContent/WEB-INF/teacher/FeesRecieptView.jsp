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
<style type="text/css">
	@page {
  size: A3;
  margin: 0;
	-webkit-print-color-adjust: exact;
}

</style>
<style type="text/css">
@media print{
.force-print{
	-webkit-print-color-adjust: exact;
}
}
</style>
</head>
<body class="fixed-header ">


	<%@ include file="/WEB-INF/teacher/leftmenu.jsp"%>

	<div class="page-container ">
		<%@ include file="/WEB-INF/teacher/Header.jsp"%>


<div class="page-content-wrapper ">
 
<div class="content ">
<nav class="navbar navbar-default bg-master-lighter sm-padding-10 "  role="navigation">
<div class="container-fluid">
 
<div class="navbar-header">
</div>
 
<div class="collapse navbar-collapse" id="sub-nav">
<div class="row">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<ul class="nav navbar-nav navbar-center">
<li><a href="#">Open</a></li>
<li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Print" onclick="generatePDF();" ><i class="fa fa-print"></i></a></li>
<li><a href="#" data-toggle="tooltip" data-placement="bottom" id="downloadPDF" title="Download" onclick="generatePDF();" ><i class="fa fa-download"></i></a></li>
</ul>
</div>
<div class="col-sm-4">
</div>
</div>
</div>
 
</div>
 
</nav>
 
<div class="container-fluid container-fixed-lg  p-r-40 p-l-40" >
 
<div class="panel panel-default " id="target" style=" ">
<div class="panel-body">
<div class="invoice padding-50 sm-padding-10">
<div>
<div class="pull-left">
<img width="132" height="85" alt="" class="invoice-logo" data-src-retina="assets/img/2.png" data-src="assets/img/2.png" src="assets/img/2.png">
<address class="m-t-10">
<strong>Coaching By.
<br>Meeta Kansara</strong>

<br>
207 pyramid Square, Above Tanishq Showroom,<br>
LP Sawani Road, Adajan, Surat
</address>
<br>
</div>
<div class="pull-right sm-m-t-20">
<h2 class="font-montserrat all-caps hint-text">Reciept</h2>
</div>
<div class="clearfix"></div>
</div>
<br>
<br>
<div class="container-sm-height">
<div class="row-sm-height">
<div class="col-md-9 col-sm-height sm-no-padding">
<p class="small no-margin">Reciept to</p>
<h4 class="semi-bold m-t-10">${StudentMaster.fullname}</h4>
<address>
<strong>Standard : ${StudentMaster.standard} | Medium: ${StudentMaster.medium}</strong>
<br>Batch : ${StudentMaster.batch}
<br><i class="fa fa-phone"></i> ${StudentMaster.contactnumber1} ${StudentMaster.contactnumber2}
<br>
</address>
</div>
<div class="col-md-3 col-sm-height col-bottom sm-no-padding sm-p-b-20">
<br>
<div>
<div class="pull-left font-montserrat bold all-caps">Invoice No :</div>
<div class="pull-right">${FeesMaster.transId}</div>
<div class="clearfix"></div>
</div>
<div>
<div class="pull-left font-montserrat bold all-caps">Invoice date : </div>
<div class="pull-right">${PayDate}</div>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
<div class="table-responsive">
<table class="table m-t-70">
<thead>
<tr>
<th class=""> Description</th>
<th class="text-center"></th>
<th class="text-center">Amount</th>
<th class="text-right"></th>
</tr>
</thead>
<tbody>
<tr>
<td class="">
<p class="text-black" style="font-size: large ; ">Tution Fees paid </p>
<p class="small hint-text" >
${InstallmentNo} Installment
</p>
</td>
<td class="text-center"></td>
<td class="text-center"><span class="text-primary bold " style="font-size: large ; "><i class="fa fa-inr"></i> ${FeesMaster.amount}</span></td>
<td class="text-right">  </td>
</tr>
</tbody>
</table>
</div>

<br>
<strong>Details:</strong>
<p class="text-black">By ${FeesMaster.modeofpayment}</p>
<p class="hint-text">
${FeesMaster.modeDescription}
</p>

<br>
<br>
<br>
<br>
<br>
<br>
<div>
<img width="200" height="1" alt="" class="invoice-signature" data-src-retina="assets/img/invoice/signature.png" data-src="assets/img/invoice/signature.png" src="assets/img/invoice/signature.png">
<p>Reciever's Signature</p>
</div>
<br>
<br>
<div class="container-md-height col-md-12">
<div class="row row-sm-height b-a b-grey">
<div class="col-sm-3 col-sm-height col-middle p-l-25 sm-p-t-15 sm-p-l-15 b-l b-t b-b  b-grey clearfix sm-p-b-15">
<h5 class="font-montserrat all-caps small no-margin hint-text bold">Previous Balance</h5>
<h3 class="no-margin"><i class="fa fa-inr"></i> ${paidAmount}</h3>
</div>
<div class="col-sm-3 col-sm-height col-middle clearfix sm-p-b-15 b-t b-b b-grey ">
<h5 class="font-montserrat all-caps text-primary small no-margin hint-text bold ">Amount Paid</h5>
<h3 class="no-margin text-primary"><i class="fa fa-inr"></i> ${FeesMaster.amount}</h3>
</div>
<div class="col-sm-3 col-sm-height col-middle clearfix sm-p-b-15 b-t b-b b-grey ">
<h5 class="font-montserrat all-caps small no-margin hint-text bold">Total Fees</h5>
<h3 class="no-margin "><i class="fa fa-inr"></i> ${FeesMaster.totalFees}</h3>
</div>

<div class="col-sm-3 text-right bg-white col-sm-height  b-a b-b b-r b-black padding-15 force-print " >
<h5 class="font-montserrat all-caps small no-margin hint-text text-danger b-grey  bold " >Outstanding Balance</h5>
<h1 class="no-margin text-danger b-grey bold"><i class="fa fa-inr"></i> ${NewOutBal}</h1>
</div>
</div>
</div>

<br>
<br>
<br>

<p class="small hint-text">
*Fees once paid, cannot be transfered or refund.
</p>
<br>
<br>
<hr>
<div class="m-b-5">
<img src="assets/img/2.png" alt="logo" data-src="assets/img/2.png" data-src-retina="assets/img/2.png" width="40" height="25">
<span class="m-l-70 text-black sm-pull-right">+91 9898228804     |     +919898704734</span>
</div>
</div>
</div>
</div>
 
</div>
 
</div>
 
 
 
 
<div class="container-fluid container-fixed-lg footer">
<div class="copyright sm-text-center">
<p class="small no-margin pull-left sm-pull-reset">
<span class="hint-text">Copyright &copy; 2016 </span>
<span class="font-montserrat">Coaching By Meeta Kansara</span>.
<span class="hint-text">All rights reserved. </span>
<span class="sm-block"><a href="#" class="m-l-10 m-r-10"></a> | <a href="#" class="m-l-10"></a></span>
</p>
<p class="small no-margin pull-right sm-pull-reset">
<a href="#">Hand-crafted</a> <span class="hint-text">&amp; Made with Love <i class="fa fa-heart"></i></span>
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
	<script src="assets/js/form_wizard.js" type="text/javascript"></script>


<script src="assets/js/jspdf.debug.js" type="text/javascript"></script>

	<script src="assets/js/jspdf.js" type="text/javascript"></script>
	<script type="text/javascript" src="jspdf/jspdf.plugin.addimage.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.cell.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.from_html.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.ie_below_9_shim.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.javascript.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.sillysvgrenderer.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.split_text_to_size.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.standard_fonts_metrics.js"></script>
<script type="text/javascript" src="jspdf/jspdf.PLUGINTEMPLATE.js"></script>
<script src="assets/js/main.js" type="text/javascript"></script>
	
	<script src="assets/js/scripts.js" type="text/javascript"></script>
	<script>
		
	
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
function generatePDF(){
	window.print();
	}
</script>
</body>


</html>