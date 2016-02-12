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
//= require gmaps/google
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



function ShowQuestions(sel){
	//e.preventDefault();
	alert(sel.options[sel.selectedIndex].text);
	$('#nanny').css("display", "none");
	$('#governess').css("display", "none");
	$('#cooker').css("display", "none");
	$('#driver').css("display", "none");
	$('#housekeeper').css("display", "none");
	$('#assistance').css("display", "none");
	$('#nurse').css("display", "none");
	var category = sel.value;
	var name = sel.options[sel.selectedIndex].text;
	if(name == "Chauffeur / Driver"){
		$('#driver').css("display", "block");
	}
	if(name == 'Babysitter / Nanny') {
		$('#nanny').css("display", "block");
	}
	if(name == 'Housekeeper / Cleaning'){
		$('#housekeeper').css("display", "block");
	}
	if(name == 'Tutors / Governesses'){
		$('#governess').css("display", "block");
	}
	if(name == 'Chef / Cook'){
		$('#cooker').css("display", "block");
	}
	if(name == 'Domestic Couple / Gardner'){
		$('#assistance').css("display", "block");
	}
	if(name == 'Nurse'){
		$('#nurse').css("display", "block");
	}

};


function exportPDF(){
	var doc = new jsPDF();
    doc.fromHTML($('#panels').html(), 15, 15, {
        'width': 170,'elementHandlers': specialElementHandlers
    });
    doc.save('candidate-file.pdf');
};

$(document).ready(function () {
	$('.carousel').carousel();
	$('.datepicker').datepicker();
	//$('#interview_interview_date').datepicker();

	$("#candidate_mobile").intlTelInput();

	I18n.defaultLocale = "<%= I18n.default_locale %>";
	I18n.locale = "<%= I18n.locale %>";




	var specialElementHandlers = {
        'body': function (element,renderer) {
            return true;
        }
    };
 	$('#exportPDF').click(function () {
        var doc = new jsPDF();
        doc.fromHTML($('#main_content').html(), 15, 15, {
            'width': 170,'elementHandlers': specialElementHandlers
        });
        doc.save('sample-file.pdf');
    });
    
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

	

});