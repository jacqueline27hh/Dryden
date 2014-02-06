/*

My Custom JS
============

Author:  Brad Hussey
Updated: August 2013
Notes:	 Hand coded for Udemy.com

*/

$(function() {
	$('#alertMe').click(function(e) {
		e.preventDefault(); //e -> prevent going to the link or refresh the page because "alertMe" is a link

		$('#successAlert').slideDown();  //slide down success alert
	});

	$('a.pop').click(function(e){
		e.preventDefault();

	$('a.pop').popover();

	$('[rel="tooltip"]').tooltip();



	});



});

