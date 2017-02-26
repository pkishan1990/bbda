/* ============================================================
 * Form Wizard
 * Multistep form wizard using Bootstrap Wizard Plugin
 * For DEMO purposes only. Extract what you need.
 * ============================================================ */
(function($) {

    'use strict';

    $(document).ready(function() {
    	
    	$('#formfullday').validate();
    	$('#formhalfday').validate();
    	$('#formlwp').validate();

        $('#rootwizard').bootstrapWizard({
            onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index + 1;

                // If it's the last tab then hide the last button and show the finish instead
                if ($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show().removeClass('disabled hidden');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }

                var li = navigation.find('li.active');

                var btnNext = $('#rootwizard').find('.pager .next').find('button');
                var btnPrev = $('#rootwizard').find('.pager .previous').find('button');

                // remove fontAwesome icon classes
                function removeIcons(btn) {
                    btn.removeClass(function(index, css) {
                        return (css.match(/(^|\s)fa-\S+/g) || []).join(' ');
                    });
                }

                if ($current > 1 && $current < $total) {

                    var nextIcon = li.next().find('.fa');
                    var nextIconClass = nextIcon.attr('class').match(/fa-[\w-]*/).join();

                    removeIcons(btnNext);
                    btnNext.addClass(nextIconClass + ' btn-animated from-left fa');

                    var prevIcon = li.prev().find('.fa');
                    var prevIconClass = prevIcon.attr('class').match(/fa-[\w-]*/).join();

                    removeIcons(btnPrev);
                    btnPrev.addClass(prevIconClass + ' btn-animated from-left fa');
                } else if ($current == 1) {
                    // remove classes needed for button animations from previous button
                    btnPrev.removeClass('btn-animated from-left fa');
                    removeIcons(btnPrev);
                } else {
                    // remove classes needed for button animations from next button
                    btnNext.removeClass('btn-animated from-left fa');
                    removeIcons(btnNext);
                }
            },
            onNext: function(tab, navigation, index) {
                console.log("Showing next tab");
             
                if(index=='1'){
                	var empcode = $('#selectedempcode').val();
            		if (empcode.length == 0 ){
            			
            			$("#remarkField").css("display", "block");
            			$('#remarkField').addClass('error');
            			
            			return false;
            		}else{
            			console.log('ajax');
            			$.ajax({
            			    url:'getcreditedleavesdetails.htm',
            			    type:'POST',
            			    data:  "empcode="+empcode,
            			    dataType:  "text",
            			    error: function(data, textStatus, jqXHR){ 
         			    	   console.log("Error retriving employe bal..");
         			    	   console.log(data);
         			    	  console.log(textStatus);
         			    	 console.log(jqXHR);
         			      },
            			    success: function( json ) {
            			    	
            			    	var balhtml = "";
            			    	var html = "";
            			    	var leavebalinputs ='';
            			    	 var arr = jQuery.parseJSON(json);
            			    	
            			    	for (var i = 0; i < arr.length; i++) {
            						var innerarray =arr[i];
            						  html +="<option value=" + innerarray[0]  + ">" + innerarray[1] + "</option>";
            						  balhtml += "<br>"+innerarray[1]+" Balance: " + innerarray[3] ;
            						  leavebalinputs += '<input type="hidden" id="'+innerarray[0] +'" name="'+innerarray[0] +'"  value = "'+innerarray[3] +'">';
            					}
            					 document.getElementById("leavecode").innerHTML = html;
            					 document.getElementById("hiddenform").innerHTML = leavebalinputs;
            					 document.getElementById("hdleavecode").innerHTML = html;
            					$('#prebalancehint').html(balhtml);
            					$('#hdprebalancehint').html(balhtml);
            			    }
            			});
            		}
                }
                else if(index=='2'){
                	var leaveType = $('#selectedLeaveType').val();
                	if (leaveType.length == 0 ){
                		$('#hinttext').css("display", "block");
                		$('#halfdaydiv').css("display", "none");
                		$('#lwpdaydiv').css("display", "none");
                		$('#fulldaydiv').css("display", "none");
                		$("#remarkFieldofleavetype").css("display", "block");
            			$('#remarkFieldofleavetype').addClass('error');
            			return false;
                	}
                	if(leaveType.trim() === 'fd'){
                		
            			$('#formlwp')[0].reset();
            			$('#formhalfday')[0].reset();
            			$('#halfdaydiv').css("display", "none");
            			$('#lwpdaydiv').css("display", "none");
            			$('#hinttext').css("display", "none");
            			$('#fulldaydiv').css("display", "block");
            			
            		}else if(leaveType.trim() === 'hd'){
            			
            			$('#formlwp')[0].reset();
            			$('#formfullday')[0].reset();
            			$('#fulldaydiv').css("display", "none");
            			$('#lwpdaydiv').css("display", "none");
            			$('#hinttext').css("display", "none");
            			$('#halfdaydiv').css("display", "block");
            						
            		}else if(leaveType.trim() === 'lwp'){
            			
            			$('#formhalfday')[0].reset();
            			$('#formfullday')[0].reset();
            			$('#fulldaydiv').css("display", "none");
            			$('#halfdaydiv').css("display", "none");
            			$('#hinttext').css("display", "none");
            			$('#lwpdaydiv').css("display", "block");
            			
            		}
                	
                }
                else if(index=='3'){
                	var leaveType = $('#leaveApplicationType').val();
                	if(leaveType.trim() === 'fd'){
                		
                		
                		var fromDate = $("#leavefrom").val();
                		var toDate = $("#leaveupto").val();
                		var lcode = $("#leavecode").val();
                		
                		if (fromDate.length == 0 || toDate.length == 0) {
                			
                			$('#remarkFielddaterange').addClass('error');
                			$('#leavefrom').addClass('error');
                			$('#leaveupto').addClass('error');
                			$('#daterange').addClass('has-error');
                			$("#remarkFielddaterange").css("display", "block");
                			return false;
                				
                		}
                		if (lcode.length == 0 ) {
                			
                			$('#remarkFieldleavecode').addClass('error');
                			$('#leavecode').addClass('error');
                			$('#leavecodefield').addClass('has-error');
                			$("#remarkFieldleavecode").css("display", "block");
                			return false;
                				
                		}
                		
            			
            		}else if(leaveType.trim() === 'hd'){
            			var lcode = $("#hdleavecode").val();
            			var fromDate = $("#hdleavefrom").val();
            			if (fromDate.length == 0 ) {
            				$('#remarkFieldhd').addClass('error');
                			$('#hdleavefrom').addClass('error');
                			$('#hdleavedatefied').addClass('has-error');
                			$("#remarkFieldhd").css("display", "block");
                			return false;
            			}
            			if (lcode.length == 0 ) {
                			
                			$('#remarkFieldleavecodehd').addClass('error');
                			$('#hdleavecode').addClass('error');
                			$('#leavecodefieldhd').addClass('has-error');
                			$("#remarkFieldleavecodehd").css("display", "block");
                			return false;
                				
                		}
            						
            		}else if(leaveType.trim() === 'lwp'){
            			
            			var fromDate = $("#lwpleavefrom").val();
                		var toDate = $("#lwpleaveupto").val();
                		
                		
                		if (fromDate.length == 0 || toDate.length == 0) {
                			
                			$('#lwpremarkField').addClass('error');
                			$('#lwpleavefrom').addClass('error');
                			$('#lwpleaveupto').addClass('error');
                			$('#lwpfield').addClass('has-error');
                			$("#lwpremarkField").css("display", "block");
                			return false;
                				
                		}
            		}
                	displaySummary();
                }
                else  if(index=='4'){
                	
                	
                }
            },
            onPrevious: function(tab, navigation, index) {
                console.log("Showing previous tab");
            },
            onInit: function() {
                $('#rootwizard ul').removeClass('nav-pills');
            }

        });

        $('.remove-item').click(function() {
            $(this).parents('tr').fadeOut(function() {
                $(this).remove();
            });
        });

    });

})(window.jQuery);