/* ============================================================
 * Calendar
 * This is a Demo App that was created using Pages Calendar Plugin
 * We have demonstrated a few function that are useful in creating
 * a custom calendar. Please refer docs for more information
 * ============================================================ */

(function($) {

    'use strict';

    $(document).ready(function() {
    	 
        var selectedEvent;
        $('body').pagescalendar({
        	
            //Loading Dummy EVENTS for demo Purposes, you can feed the events attribute from 
            //Web Service
        	/*start:'2015',
        	ui:function(){
        		var ui = $.fn.pagescalendar.settings.ui;
        		ui.year.endYear="2016";
        		return ui;
        	},*/
        	onViewRenderComplete: function() {
                //You can Do a Simple AJAX here and update 
            },
            onEventClick: function(event) {
                


                
            },
            onEventDragComplete: function(event) {
                
            },
            onEventResizeComplete: function(event) {
                
            },
        });
        //After the settings Render you Calendar
        $('body').pagescalendar('render');

        // Some Other Public Methods That can be Use are below \
        //console.log($('body').pagescalendar('getEvents'))
        //get the value of a property
        //console.log($('body').pagescalendar('getDate','MMMM'));

      
    });

})(window.jQuery);