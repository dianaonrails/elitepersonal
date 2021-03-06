// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery_nested_form
//= require underscore
//= require owl.carousel
//= require react
//= require react_ujs
//= require react
//= require react_ujs
//= require intlTelInput
//= require i18n
//= require i18n/translations
//= require bootstrap-datepicker
//= require moment
//= require bootstrap-datetimepicker
//= require jspdf
//= require fullcalendar
//= require ckeditor/init
//= require_directory .


function CategoryQuestions(){
	
		$('#candidate_category_id, #client_request_category_id').change(function(){
			$( "#questions" ).empty();
			if($(this).val()){
				$.ajax({
			      type: "GET",
			      dataType: 'html',
			      url:'/category_questions/get_questions',
			      data: {'category_id': $(this).val()},
			      success: function(data) {
			  		if(data){
			  			$('#questions').append(data);
			  		}
			  		else{
			  			$('#questions').append('<h4>No records.</h4>');
			  		}
			      },
			      error: function(data){
				    	$('#questions').append('<h4>error</h4>');
			      }
			    });
			}
			else{
				$('#questions').append('<h4></h4>');
			}
		});

	
}



function exportPDF(){
	var doc = new jsPDF();
    doc.fromHTML($('#panels').html(), 15, 15, {
        'width': 170,'elementHandlers': specialElementHandlers
    });
    doc.save('candidate-file.pdf');
};
(function($) {
	$(document).ready(function () {
		
		$('.carousel').carousel();
		$('.datepicker').datepicker();
		

		$('#exportXLS').click(function(){
			$("#candidate").table2excel({
	    		name: "Worksheet Candidate",
	    		filename: "Candidate",
	    		fileext: ".xls",
	    		exclude_links: true,
				exclude_inputs: true
	  		});

	  		var htmltable= document.getElementById('#exportXLS');
	        var html = htmltable.outerHTML;
	        window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
		});

		//$('#interview_interview_date').datepicker();

		$("#candidate_mobile").intlTelInput({
			initialCountry: "ru",
			preferredCountries: [ "ru", "en" ]
		});

		I18n.defaultLocale = "<%= I18n.default_locale %>";
		I18n.locale = "<%= I18n.locale %>";




		var specialElementHandlers = {
	        'body': function (element,renderer) {
	            return true;
	        }
	    };

		
	     

	    CategoryQuestions();
	    
		jQuery('.flyers .flyer-links a').on('click', function(e)  {
	        var currentAttrValue = jQuery(this).attr('href');
	 
	        // Show/Hide Tabs
	        jQuery('.flyers ' + currentAttrValue).show().siblings().hide();
	 
	        // Change/remove current tab to active
	        jQuery(this).parent('li').addClass('active').siblings().removeClass('active');
	 
	        e.preventDefault();
	    });


		$('.categories-list ul>li a').on('click', function(e){
			e.preventDefault();
			$('#vacancies-container').html("");
			var category = $(this).attr('id');
			
			$.ajax({
	          type: "GET",
	          dataType: 'html',
		      url:'/vacancies/update_category',
	          data: {'category': category},
	          success: function(data) {
	          		if(data){
	          			$('#vacancies-container').append(data);
	          		}
	          		else{
	          			$('#vacancies-container').append('<h3>No records </h3>');
	          		}
	          },
	          error: function(data){
			    	$('#vacancies-container').append('<h3>No records </h3>');
	          }
			    
			  
	        });
		});

		$("#calendar").fullCalendar({
		    header: {
		      left: 'prev,next today',
		      center: 'title',
		      right: 'month,agendaWeek,agendaDay'
		    },
		     
		     defaultView: "month",
		     slotMinutes: 15,
		     events: "/dashboard/get_events",
		     timeFormat: "h:mm t{ - h:mm t} ",
		     dragOpacity: "0.5"
	  	});

		$('#exportPDF').click(function () {
	 		window.print();
	 		return false;
	 		
	 		//var content = document.getElementById('main_content');

	 		//var converted = htmlDocx.asBlob(content.innerHTML, {orientation: 'landscape', margins: {top: 100}});
			//saveAs(converted, 'candidate.docx');
	 		
	    });

	});
})(jQuery);