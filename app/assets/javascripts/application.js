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
//= require_tree .


function ShowQuestions(sel){
	//e.preventDefault();
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
	if(name == 'Tutors or Governesses'){
		$('#governess').css("display", "block");
	}
	if(name == 'Chef / Cook'){
		$('#cooker').css("display", "block");
	}
	if(name == 'Domestic Couple / Gardner'){
		$('#assistance').css("display", "block");
	}
	if(name == 'Nurse (Granny Care )'){
		$('#nurse').css("display", "block");
	}

};


$(document).ready(function () {
	$('.carousel').carousel();
	$('.datepicker').datepicker();
	//$('#interview_interview_date').datepicker();

	$("#candidate_mobile").intlTelInput();

	I18n.defaultLocale = "<%= I18n.default_locale %>";
	I18n.locale = "<%= I18n.locale %>";

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

	

});