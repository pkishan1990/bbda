(function($) {
    'use strict';
    $(document).ready(function() {
        $(".list-view-wrapper").scrollbar();
        $('[data-pages="search"]').search({
            searchField: '#overlay-search',
            closeButton: '.overlay-close',
            suggestions: '#overlay-suggestions',
            brand: '.brand',
            onSearchSubmit: function(searchString) {
                console.log("Search for: " + searchString);
            },
            onKeyEnter: function(searchString) {
                console.log("Live search for: " + searchString);
                var searchField = $('#overlay-search');
                var searchResults = $('.search-results');
                clearTimeout($.data(this, 'timer'));
                searchResults.fadeOut("fast");
                var wait = setTimeout(function() {
                    searchResults.find('.result-name').each(function() {
                        if (searchField.val().length != 0) {
                        	  var id = $(this);
//                            $(this).html(searchField.val());
                          
                        	$.ajax({
	                        		type : "POST",
	                        		url : "quickSearch.htm",
	                        		data: {searchString: searchField.val()},
	                        		dataType : "text",
	                        		async: false,
	                        		error : function(data, textStatus, jqXHR) {
	                        			$(this).html("Something went wrong while searching");
	                        		},
	                        		beforeSend : function() {
	
	                        		},
	                        		success : function(json) {
	                        			var arr = jQuery.parseJSON(json);
	                        			var elementTag = '';
	                        			console.log(arr.length);
	                        			for(var i = 0 ; i < arr.length;i++){
	                        				var value =''+arr[i]; 
	                        				elementTag = elementTag+ "<div class=\"thumbnail-wrapper d48 circular bg-success text-white inline m-t-10\"> " +
                        					"<div> <img width=\"50\" height=\"50\" src=\"assets/img/profiles/avatar.jpg\""+
										"data-src=\"assets/img/profiles/avatar.jpg\""+
										"data-src-retina=\"assets/img/profiles/avatar2x.jpg\" alt=\"\"></div></div>" +
										"<div class=\"p-l-10 inline p-t-5\"  ><h4 class=\"m-b-5\"><span class=\"semi-bold \" " +
										" style=\"cursor: pointer;\"  " +
										"onclick=\"document.location = 'Studentprofile.htm?stdId="+value.split(",")[0].trim() + "' \" >"+
										value.split(",")[1].trim()+"</span></h4>" +
												"<p class=\"hint-text\"> Standard: "+value.split(",")[2].trim()+" | Medium: "+value.split(",")[4].trim()+" | Board: "+value.split(",")[5].trim()+"</p></div><br />";	
	                        			}
	                        			id.html(elementTag);
	                        			}
                        	});
                            searchResults.fadeIn("fast");
                        }
                    });
                }, 500);
                $(this).data('timer', wait);
            }
        })
    });
    $('.panel-collapse label').on('click', function(e) {
        e.stopPropagation();
    })
})(window.jQuery);