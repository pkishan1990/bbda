(function($) {

    'use strict';

    $(document).ready(function() {
    
    	$(".widget-3 .metro").liveTile();
		$(".widget-7 .metro").liveTile();
    
    
    	 var bars = $('.widget-loader-bar');
         var circles = $('.widget-loader-circle');
         var circlesLg = $('.widget-loader-circle-lg');
         var circlesLgMaster = $('.widget-loader-circle-lg-master');

         bars.each(function() {
             var elem = $(this);
             elem.portlet({
                 progress: 'bar',
                 onRefresh: function() {
                     setTimeout(function() {
                         elem.portlet({
                             refresh: false
                         });
                     }.bind(this), 2000);
                 }
             });
         });
         
         
         circles.each(function() {
             var elem = $(this);
             elem.portlet({
                 progress: 'circle',
                 onRefresh: function() {
                     setTimeout(function() {
                         elem.portlet({
                             refresh: false
                         });
                     }.bind(this), 2000);
                 }
             });
         });
    
         
         
         circlesLg.each(function() {
             var elem = $(this);
             elem.portlet({
                 progress: 'circle-lg',
                 progressColor: 'white',
                 overlayColor: '0,0,0',
                 overlayOpacity: 0.6,
                 onRefresh: function() {
                     setTimeout(function() {
                         elem.portlet({
                             refresh: false
                         });
                     }.bind(this), 2000);
                 }
             });
         });
         
         circlesLgMaster.each(function() {
             var elem = $(this);
             elem.portlet({
                 progress: 'circle-lg',
                 progressColor: 'master',
                 overlayOpacity: 0.6,
                 onRefresh: function() {
                     setTimeout(function() {
                         elem.portlet({
                             refresh: false
                         });
                     }.bind(this), 2000);
                 }
             });
         });
    
    });

})(window.jQuery);
    