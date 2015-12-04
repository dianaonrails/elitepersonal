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
//= require underscore
//= require gmaps/google
//= require bootstrap-datepicker
//= require owl.carousel
//= require react
//= require react_ujs
//= require react
//= require react_ujs
//= require intlTelInput
//= require i18n
//= require i18n/translations
//= require_tree .
$(document).ready(function () {
	$('.carousel').carousel();
	$('.datepicker').datepicker({dateFormat: "yy-mm-dd"});

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

	$('#candidate_category_id').on('change',function(e){
		e.preventDefault();
		$('#nanny').css("display", "none");
		$('#governess').css("display", "none");
		$('#cooker').css("display", "none");
		$('#driver').css("display", "none");
		$('#housekeeper').css("display", "none");
		$('#assistance').css("display", "none");
		$('#nurse').css("display", "none");
		var category = $(this).find(':selected').val();
		if(category == '1') {
			$('#nanny').css("display", "block");
		}
		if(category == '2'){
			$('#housekeeper').css("display", "block");
		}
		if(category == '3'){
			$('#driver').css("display", "block");
		}
		if(category == '4'){
			$('#governess').css("display", "block");
		}
		if(category == '5'){
			$('#cooker').css("display", "block");
		}
		
		if(category == '6'){
			$('#assistance').css("display", "block");
		}
		if(category == '7'){
			$('#nurse').css("display", "block");
		}

	});

});