// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

jQuery(function ($){

    $(".set-school-year").on('click', function() {
    		var year_value = $(this).text();
        $('#school_year').val(year_value);
        $(".school_year_form").submit();
    });
 });