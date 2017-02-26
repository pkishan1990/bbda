(function($) {

	'use strict';
	$(document)
			.ready(
					function() {
						$('#SDC-FORM').validate();
						$('#EmpOffice').validate({
							  submitHandler: function(form) {
								  var empOfficeData = $('#EmpOffice').serialize();
								  $.ajax({
										url : "UpdateEmployeeOffice.htm",
										type : "POST",
										data : empOfficeData,
										dataType : "json",
										error : function() {
											$('#modalStickUpSmall2Header').html("Error Saving Official Detail");
											$('#modalStickUpSmall2Data').html("Failed To Save Your Official Detail<br />Please Contact Administrator");
											$('#modalStickUpSmall2').modal('show');
										},
										success : function(response) {
											
											$('#modalStickUpSmall2Header').html("Save Successfull!!");
											$('#modalStickUpSmall2Data').html("Your Official Detail Saved Successfully.");
											$('#modalStickUpSmall2').modal('show');
										}
										});//End of Ajax
								  }
								});
						$('#EmpPersonal').validate({
							  submitHandler: function(form) {
								  var empPersonalData = $('#EmpPersonal').serialize();
								  $.ajax({
										url : "UpdateEmployeePersonal.htm",
										type : "POST",
										data : empPersonalData,
										dataType : "json",
										error : function() {
											$('#modalStickUpSmall2Header').html("Error Saving Personal Detail");
											$('#modalStickUpSmall2Data').html("Failed To Save Your Personal Detail<br />Please Contact Administrator");
											$('#modalStickUpSmall2').modal('show');
										},
										success : function(response) {
											
											$('#modalStickUpSmall2Header').html("Save Successfull!!");
											$('#modalStickUpSmall2Data').html("Your Personal Detail Saved Successfully.");
											$('#modalStickUpSmall2').modal('show');
										}
										});//End of Ajax
								  return false;
								  }
								});
						
						$.validator.addMethod("EmployeeCode", function(value,
								element) {
							return this.optional(element)
									|| isAlphaNumb(element);
						}, "Please Enter Valid Employee Code!!");

						$.validator.addMethod("PFNumber", function(value,
								element) {
							return this.optional(element)
									|| /[A-Za-z]{2}\/[A-Za-z]{3}\/[0-9]{5}\/[0-9]{3}/.test($(element).val());
						}, "Please Enter Valid PF Number!!");
						
						$.validator.addMethod("PassportNumber", function(value,
								element) {
							return this.optional(element)
									|| /[A-Za-z][0-9]{7}/.test($(element).val());
						}, "Please Enter Valid Passport Number!!");
						
						
						$.validator.addMethod("AAdharNumber", function(value,
								element) {
							return this.optional(element)
									|| /^[0-9]*$/.test($(element).val());
						}, "Please Enter Valid AAdhar Number!!");
						
						$.validator.addMethod("UANNumber",
								function(value, element) {
									return this.optional(element)
											|| isAlphaNumb(element);
								}, "Please Enter  Valid UAN Number!!");
						
												
						
						$.validator.addMethod("empName", function(value,
								element) {
							return this.optional(element)
									|| /^[A-Za-z ]+$/.test($(element).val());
						}, "Please Enter Valid Name!!");
						$.validator.addMethod("string",
								function(value, element) {
									return this.optional(element)
											|| /^[A-Za-z0-9 ]+$/
													.test($(element).val());
								}, "Please Enter Valid Data!!");
						
						$.validator.addMethod(
										"pancard",
										function(value, element) {
											return this.optional(element)
													|| /^[A-Z]{3}[G|A|F|C|T|H|P]{1}[A-Z]{1}\d{4}[A-Z]{1}$/
															.test($(element)
																	.val());
										}, "Please Enter Valid Pan Number!!");

						$.validator.addMethod("address",
								function(value, element) {
									return this.optional(element)
											|| isAddress(element);
								}, "Please Enter  Valid Address!!");

						$.validator.addMethod("mobile",
								function(value, element) {
									return this.optional(element)
											|| /^\d{10}$/
													.test($(element).val());
								}, "Please Enter Valid Mobile Number!!");
						
						$.validator.addMethod("landline",
								function(value, element) {
									return this.optional(element)
											|| /^\d{4}-\d{7}$/
													.test($(element).val());
								}, "Please Enter Valid Land Line Number!!");
						$.validator.addMethod("EmployeeCodeExist", function(value,
								element) {
							return isEmployeeExist(element);
						}, "Employee Code Exist!!");
						
					});
	function isAlphaNumb(f) {
		var val = $.trim($(f).val());
		var isValid = true;
		var string = val.length;
		var iChars = "`~!@#$%^&*()_+{}|\\:\"?><-=][';/., ";
		for ( var i = 0; i < string; i++) {
			if (iChars.indexOf(val.charAt(i)) != -1) {
				isValid = false;
			}
		}
		var hasAlpha = true;
		if(/^[a-zA-Z]*$/.test(val)){
			hasAlpha = false;
		}
		var hasNumber = true;
		if(/^[0-9]*$/.test(val)){
			hasNumber = false;
		}
		if(!(hasAlpha && hasNumber)){
			isValid = false;
		}
		return isValid;
	}

	function isAddress(f, mandatoryCheck) {
		var val = $(f).val();
		var isValid = true;
		var string = val.length;
		var iChars = "`~!@#$%^&*()_+{}|\\:\"?><=][';";
		for ( var i = 0; i < string; i++) {
			if (iChars.indexOf(val.charAt(i)) != -1) {
				isValid = false;
			}
		}
		return isValid;
	}
	function isEmployeeExist(f) {
		var emplist = $('#status').val().split("[")[1].split("]")[0].split(",");
		for(var i = 0 ; i < emplist.length ; i++){
			if(emplist[i].trim() == $(f).val().trim()){
				return false;
			}
		}
		return true;
	}
})(window.jQuery);